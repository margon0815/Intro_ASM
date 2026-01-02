# Intro_ASM - Introductionary Examples for Activated Sludge Modeling

Markus Ahnert, Technische Universität Dresden, Institut für Siedlungs- und Industriewasserwirtschaft\
[markus.ahnert\@tu-dresden.de](mailto:markus.ahnert@tu-dresden.de)

This github repository contains different apps based on R + Shiny (references see below). They can be used as teaching and learning examples for dynamic mass balances in wastewater treatment plants based on activated sludge process.
All apps can be used offline or deployed on a shiny web server for online use. Some apps may be available at [https://swwdigit.de/](https://swwdigit.de/). Please be aware that this website is only for test purposes and the content is under continuous modification.
The folder www contains figures or images relevant for different apps.

## Overview
### Monod function (Monod_function.Rmd)
This app demonstrates the effect of parameters on the result of the Monod function as base of almost all activated sludge model processes.

### Water balance in a storage tank (tank_storage_model.Rmd)
A storage tank with constant influent and nonlinear effluent is used to demonstrate the transport processes and simple numerical estimation of nonlinear effluent behaviour.

### Simple mass balance of a CSTR (simple_mass_balance_CSTR.Rmd)
The influence of parameters and initial conditions can be evaluated for a single CSTR with constant volume and influent conditions.

### Mass balance of a simple WWTP (mass_balance_AS_SC_system.Rmd)
In a WWTP there are different reactors and circulating connections. This leads to more complex mass balance equations with feedback loops to solve.

### Stepwise development of an activated sludge model based on experiments (E_M_Exp_model_A...D.Rmd)
Gujer and Henze presented 1991 a stepwise procedure for the development of activated sludge models. This is based on experiments performed by Ekama and Marais in the 1970s in South Africa. The developed apps comprehend the different model steps.
There are also identical models available in folder simba_models for modeling software [Simba#](https://www.ifak.eu/en/produkte/simba).


## References

R Core Team. (2025). R: A Language and Environment for Statistical Computing. Vienna,
Austria: R Foundation for Statistical Computing.

Chang W, Cheng J, Allaire J, Sievert C, Schloerke B, Xie Y, Allen J, McPherson J, Dipert A, Borges B (2025).
  shiny: Web Application Framework for R. doi:10.32614/CRAN.package.shiny

Gujer, W., & Henze, M. (1991). Activated sludge modelling and simulation. Water Science and Technology, 23(4-6), 1011-1023.
