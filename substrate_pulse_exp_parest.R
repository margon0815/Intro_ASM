# Markus Ahnert, TU Dresden, Institute for Urban Water Management
# markus.ahnert@tu-dresden.de
# very simple model for educational purposes
# direct growth on a single substrate like acetate with activated sludge 

# install.packages("deSolve")
# install.packages("FME")

library(deSolve)
library(FME)

# ------- read measurements ---------------------

OUR_ts <-read.csv("our_results.csv", sep = ";") # some measured oxygen uptake rate measurements
yobs <- data.frame(OUR_ts)

# define ODE function - set of ordinary differential equations

ASM_simple_ode <- function(t, state, params) {
  with(as.list(c(state, params)), {
    # variables    
    Monod_SS <- SS/(SS+Ks_SS)
    
    # ODEs
    dSO   <- - ((1-1/YH_SS)*(muH*Monod_SS*XH) - bH*XH) # switch to positive with minus
    dSS   <- - 1/YH_SS*     (muH*Monod_SS*XH)
    dXH   <-                 muH*Monod_SS*XH  - bH*XH
    # return derivatives
    list(c(dSO, dSS, dXH),OUR=dSO)
  })
}

# some events
eventdat <- data.frame(var = c("SS", "SS", "SS", "SS"),           # relevant model fraction
                       time = c(0.02, 0.08, 0.3, 1) ,             # time in days
                       value = c(220, 440, 880, 220),             # concentration values in g m^-3
                       method = c("add", "add", "add", "add"))    # adding of concentrations

t_start = 0 # start time
t_end = 2 # end time
t_points = seq(t_start, t_end, by = 0.005) # time points for solution

# model parameters
params <- c(YH_SS=0.8, muH=2, Ks_SS=20,bH=0.2)

# initial states
state_0 <- c(SO = 0, SS=0, XH=1200) # initial state

# solve system of differential equations
out <- ode(y = state_0, times = t_points, func = ASM_simple_ode, parms = params, events = list(data = eventdat))

# show results
plot(out, xlab = "Time [d]", ylab = "Concentration [g m^-3]")
plot(out, obs = yobs, xlab = "Time", ylab = "Concentration")


# ---------- END INITIAL MODEL CALCULATION ----------------

# ---------- BEGIN PARAMETER ESTIMATION ----------------

startpars <- c(YH_SS=0.55, muH=1.3, Ks_SS=20,bH=0.2)
plower <- c(YH_SS=0.1, muH=0.1, Ks_SS=1,bH=0.01)
pupper <- c(YH_SS=0.9, muH=10, Ks_SS=50,bH=0.5)

modelCost <- function(p, p_fixed = NULL) {
  pa <- c(p, p_fixed)
  out <- ode(y = state_0, func = ASM_simple_ode, parms = pa, times = yobs$time, events = list(data = eventdat))
  modCost(out, yobs, weight = "mean")
}

## define which parameters to calibrate
p_which <- c("YH_SS","muH","bH")

## assign parameters to optimized and fixed subset
p_opt   <- startpars[p_which]
p_lower <- plower[p_which]
p_upper <- pupper[p_which]
p_fixed <- startpars[setdiff(names(startpars), p_which)]

# Determine what are the best parameters to fit
Sfun <- sensFun(modelCost, startpars)
plot(summary(Sfun))

## fit the model; trace = TRUE shows intermediate results
fit <- modFit(f = modelCost, p = p_opt,
              upper = p_upper, lower = p_lower, p_fixed = p_fixed,
              control = list(trace = TRUE), method = "Port")

summary(fit)

pp<-fit$par

out2 <- ode(y = state_0, parms = startpars, times = yobs$time, func = ASM_simple_ode, events = list(data = eventdat))
out3 <- ode(y = state_0, parms = c(pp, p_fixed), times = yobs$time, func = ASM_simple_ode, events = list(data = eventdat))

plot(out, out2, out3, obs = yobs, xlab = "Time", ylab = "Concentration",col = 1:3, lty = c(1,1,1), lwd=c(1,1,4))
legend("topright", legend=c("original", "startpars", "fitted"),
       col = 1:3, lty = c(1,1,1))

plot(out3, xlab = "Time", ylab = "Concentration")

pp
