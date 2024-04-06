within FluidSystemComponents.Sensor;

model MassFlowDispByRef00
  
  //----------------------------------------
  // replaceable
  //----------------------------------------
  replaceable package Medium =
      Modelica.Media.Interfaces.PartialMedium "Medium in the component"
      annotation (choicesAllMatching = true);
      
  replaceable Real m_flow_dat;
  
  //----------------------------------------
  // parameter
  //----------------------------------------
  parameter Integer significantDigits_m_flow(min=1) = 4
    "Number of significant digits to be shown";
  
  
  //----------------------------------------
  // variable
  //----------------------------------------
  // none
  
  //----------------------------------------
  // Interface
  //----------------------------------------
  Modelica.Fluid.Interfaces.FluidPort_a port_a(
                                redeclare package Medium = Medium,
                     m_flow(min=0)) "" 
                     annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}})));
  
  Modelica.Fluid.Interfaces.FluidPort_b port_b(
                                redeclare package Medium = Medium,
                     m_flow(min=0)) ""
                     annotation(
    Placement(transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}})));
//************************************************************
equation

  0 = port_a.m_flow + port_b.m_flow;
  port_a.m_flow=0.0;
  
  port_a.h_outflow = inStream(port_b.h_outflow);
  port_b.h_outflow = inStream(port_a.h_outflow);
  
  
//************************************************************
annotation(
    defaultComponentName ="m_flow_ref",
    Icon(graphics = {Text(origin = {0, 36}, extent = {{-160, 20}, {160, -20}}, textString = DynamicSelect("0.0", String(m_flow_dat, significantDigits_m_flow, 0, true))), Text(origin = {48, -19}, extent = {{-36, 15}, {36, -15}}, textString = "kg/s"), Line(origin = {-3.52, 2.22}, points = {{-97, -2}, {103, -2}}, thickness = 2), Line(origin = {-2.21638, -46.0887}, points = {{-68, 0}, {68, 0}}, thickness = 1), Line(origin = {58.03, -44.48}, points = {{-7.62371, 7.98346}, {8.37629, -2.01654}, {-7.62371, -10.0165}}, thickness = 1.5), Text(origin = {0, -61}, extent = {{-120, 7}, {120, -7}}, textString ="%name")}, coordinateSystem(extent = {{-100, -60}, {100, 60}})));
    
end MassFlowDispByRef00;
