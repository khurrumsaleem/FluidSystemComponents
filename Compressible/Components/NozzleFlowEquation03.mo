within FluidSystemComponents.Compressible.Components;

model NozzleFlowEquation03
  extends FluidSystemComponents.Compressible.BaseClasses.NozzleFlowEquation_base03;
  //*****************************************************************
  import units = Modelica.SIunits;
  import consts = Modelica.Constants;
  /*-----------------------------------
      parameters
      -----------------------------------*/
  parameter units.Area AmechTot_par = Modelica.Constants.pi / 4 * 0.05 "";
  parameter Real Cd_par = 0.8 "";
  /* ******************************************************************************** */
equation
  AmechTot = AmechTot_par;
  Cd = Cd_par;
  annotation(
    defaultComponentName = "Restriction",
    Icon);
end NozzleFlowEquation03;