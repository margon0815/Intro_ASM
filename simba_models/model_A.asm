<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<ASM id="model_A" asmType="ASM" Descr="simple growth model" author="Ahnert M. based on Ekama model (from Gujer and Henze)" publisherEMail="markus.ahnert@tu-dresden.de" valid="True" fastType="Cs">
   <dyas />
   <UProps>
      <FracProp id="TSS" Descr="TSS: Total Suspended Solids" UnitID="g/m^3" Default="0" Color="#E99F6D2B" isBalance="False" isDisplay="True" formula="" loadUnitID="kg/d" loadScal="0.001" />
      <FracProp id="VSS" Descr="VSS: Volatile Suspended Solids" UnitID="g/m^3" Default="0" Color="#E9DA963B" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg/d" loadScal="0.001" />
      <FracProp id="ISS" Descr="ISS: Inorganic Suspended Solids" UnitID="g/m^3" Default="0" Color="#CF878889" isBalance="False" isDisplay="True" formula="" loadUnitID="kg/d" loadScal="0.001" />
      <FracProp id="N" Descr="TN: Total Nitrogen" UnitID="g N/m^3" Default="0" Color="#EB007500" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg N/d" loadScal="0.001" />
      <FracProp id="TKN" Descr="TKN: Total Kjeldahl Nitrogen" UnitID="g N/m^3" Default="0" Color="#EBC7C200" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg N/d" loadScal="0.001" />
      <FracProp id="N_fil" Descr="N_fil: Filtered Nitrogen (incl. colloidals)" UnitID="g N/m^3" Default="0" Color="#C3008D00" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg N/d" loadScal="0.001" />
      <FracProp id="N_sol" Descr="N_sol: Soluble Nitrogen (w/o colloidals)" UnitID="g N/m^3" Default="0" Color="#C3008D00" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg N/d" loadScal="0.001" />
      <FracProp id="NOx" Descr="NOx-N: Sum of NO2 and NO3" UnitID="g N/m^3" Default="0" Color="#EB007500" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg N/d" loadScal="0.001" />
      <FracProp id="ThOD" Descr="total theoretical oxygen demand" UnitID="g COD/m^3" Default="0" Color="#EBDEB03C" isBalance="True" isDisplay="False" formula="0.0" loadUnitID="kg COD/d" loadScal="0.001" />
      <FracProp id="ThN" Descr="total theoretical total N content" UnitID="g N/m^3" Default="0" Color="#EB007500" isBalance="True" isDisplay="False" formula="0.0" loadUnitID="kg N/d" loadScal="0.001" />
      <FracProp id="P" Descr="TP: Total Phosphorus" UnitID="g P/m^3" Default="0" Color="#E9007EFF" isBalance="True" isDisplay="True" formula="0.0" loadUnitID="kg P/d" loadScal="0.001" />
      <FracProp id="Charge" Descr="Ionic charge " UnitID="mol/m^3" Default="0" Color="#FFF709C1" isBalance="True" isDisplay="False" formula="0.0" loadUnitID="kmol/d" loadScal="0.001" />
      <FracProp id="Metal" Descr="Total metal content" UnitID="g/m^3" Default="0" Color="#DCBE00FF" isBalance="True" isDisplay="False" formula="0.0" loadUnitID="kg/d" loadScal="0.001" />
      <FracProp id="C" Descr="total C content" UnitID="g C/m^3" Default="0" Color="#B29A8762" isBalance="True" isDisplay="False" formula="0.0" loadUnitID="kg C/d" loadScal="0.001" />
      <FracProp id="COD" Descr="COD: Total Chemical Oxygen Demand" UnitID="g COD/m^3" Default="0" Color="#EBDEB03C" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg COD/d" loadScal="0.001" />
      <FracProp id="COD_fil" Descr="COD_fil: Filtered Chemical Oxygen Demand (incl. colloidals) " UnitID="g COD/m^3" Default="0" Color="#BEEABA3F" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg COD/d" loadScal="0.001" />
      <FracProp id="COD_sol" Descr="COD_sol: Soluble Chemical Oxygen Demand (w/o colloidals)" UnitID="g COD/m^3" Default="0" Color="#BEEABA3F" isBalance="False" isDisplay="True" formula="0.0" loadUnitID="kg COD/d" loadScal="0.001" />
      <FracProp id="BOD5" Descr="cBOD5: Total Carbonaceous Biological Oxygen Demand within 5 days" UnitID="g BOD5/m^3" Default="0" Color="#FF0000FF" isBalance="False" isDisplay="True" formula="" loadUnitID="kg BOD5/d" loadScal="0.001" />
      <FracProp id="BOD5_fil" Descr="cBOD5_fil: Filtered Carbonaceous Biological Oxygen Demand within 5 days" UnitID="g BOD5/m^3" Default="0" Color="#FF0000FF" isBalance="False" isDisplay="True" formula="" loadUnitID="kg BOD5/d" loadScal="0.001" />
      <FracProp id="BOD5_sol" Descr="cBOD5_sol: Soluble Carbonaceous Biological Oxygen Demand within 5 days" UnitID="g BOD5/m^3" Default="0" Color="#FF0000FF" isBalance="False" isDisplay="True" formula="" loadUnitID="kg BOD5/d" loadScal="0.001" />
      <FracProp id="sPS" Descr="Setteability in primary clarifier (0-1)" UnitID="-" Default="0" Color="#FF0000FF" isBalance="False" isDisplay="False" formula="0" loadUnitID="-" loadScal="0.001" />
   </UProps>
   <Qlist id="model_A" Descr="simple growth model" w="1" col="#FF0000FF" isFlow="Flow" flowUnit="m^3/d" Rho="1000">
      <Quality id="SO" Descr="dissolved oxygen" UnitID="g m^-3" SX="1" SXe="Soluble" aTS="0" Diff="0" Gas="-" loadUnitID="" loadScal="0.001" loadCol="#FF0000FF">
         <parameters>
            <par id="TSS" val="0" />
            <par id="VSS" val="0" />
            <par id="ISS" val="0" />
            <par id="N" val="0" />
            <par id="TKN" val="0" />
            <par id="N_fil" val="0" />
            <par id="N_sol" val="0" />
            <par id="NOx" val="0" />
            <par id="ThOD" val="-1" />
            <par id="ThN" val="0" />
            <par id="P" val="0" />
            <par id="Charge" val="0" />
            <par id="Metal" val="0" />
            <par id="C" val="0" />
            <par id="COD" val="0" />
            <par id="COD_fil" val="0" />
            <par id="COD_sol" val="0" />
            <par id="BOD5" val="0" />
            <par id="BOD5_fil" val="0" />
            <par id="BOD5_sol" val="0" />
            <par id="sPS" val="0" />
         </parameters>
      </Quality>
      <Quality id="SS" Descr="readily biodegradable substrate" UnitID="g m^-3" SX="1" SXe="Soluble" aTS="0" Diff="0" Gas="-" loadUnitID="" loadScal="0.001" loadCol="#FF0000FF">
         <parameters>
            <par id="TSS" val="0" />
            <par id="VSS" val="0" />
            <par id="ISS" val="0" />
            <par id="N" val="0" />
            <par id="TKN" val="0" />
            <par id="N_fil" val="0" />
            <par id="N_sol" val="0" />
            <par id="NOx" val="0" />
            <par id="ThOD" val="1" />
            <par id="ThN" val="0" />
            <par id="P" val="0" />
            <par id="Charge" val="0" />
            <par id="Metal" val="0" />
            <par id="C" val="0" />
            <par id="COD" val="1" />
            <par id="COD_fil" val="1" />
            <par id="COD_sol" val="1" />
            <par id="BOD5" val="0" />
            <par id="BOD5_fil" val="0" />
            <par id="BOD5_sol" val="0" />
            <par id="sPS" val="0" />
         </parameters>
      </Quality>
      <Quality id="XH" Descr="heterotrophic biomass" UnitID="g m^-3" value="1" SX="2" SXe="Particulate" aTS="0.66" Diff="0" Gas="-" loadUnitID="" loadScal="0.001" loadCol="#FF0000FF">
         <parameters>
            <par id="TSS" val="0.66" />
            <par id="VSS" val="0.66" />
            <par id="ISS" val="0" />
            <par id="N" val="0" />
            <par id="TKN" val="0" />
            <par id="N_fil" val="0" />
            <par id="N_sol" val="0" />
            <par id="NOx" val="0" />
            <par id="ThOD" val="1" />
            <par id="ThN" val="0" />
            <par id="P" val="0" />
            <par id="Charge" val="0" />
            <par id="Metal" val="0" />
            <par id="C" val="0" />
            <par id="COD" val="1" />
            <par id="COD_fil" val="0" />
            <par id="COD_sol" val="0" />
            <par id="BOD5" val="0" />
            <par id="BOD5_fil" val="0" />
            <par id="BOD5_sol" val="0" />
            <par id="sPS" val="0" />
         </parameters>
      </Quality>
   </Qlist>
   <pars>
      <expr id="mu_max" formula="4" Descr="-" UnitID="d^-1" groupId="" />
      <expr id="YH" formula="0.67" Descr="-" UnitID="-" groupId="" />
      <expr id="bH" formula="0.6" Descr="decay constant" UnitID="d^-1" groupId="" />
      <expr id="K_S" formula="5" Descr="-" UnitID="-" groupId="" />
   </pars>
   <exvars />
   <ivars />
   <algvars />
   <procs>
      <proc id="growth" rate="mu_max*SS/(SS+K_S)*XH" Descr="aerobic growth" UnitID="">
         <stoichio>
            <expr id="SS" formula="-1/YH" Descr="-" UnitID="-" groupId="" />
            <expr id="XH" formula="1" Descr="-" UnitID="-" groupId="" />
            <expr id="SO" formula="(YH-1)/YH" Descr="-" UnitID="-" groupId="" />
         </stoichio>
      </proc>
      <proc id="decay" rate="bH*XH" Descr="" UnitID="">
         <stoichio>
            <expr id="XH" formula="-1" Descr="-" UnitID="-" groupId="" />
            <expr id="SS" formula="1" Descr="-" UnitID="-" groupId="" />
         </stoichio>
      </proc>
   </procs>
</ASM>