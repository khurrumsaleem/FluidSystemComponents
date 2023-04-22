within FluidSystemComponents.Sensor;

model DispColorGrad00
  
  //----------------------------------------
  // Import
  //----------------------------------------
  import Colors=Modelica.Mechanics.MultiBody.Visualizers.Colors;
  
  
  //----------------------------------------
  // parameter
  //----------------------------------------
  parameter Real valMin=0 "";
  parameter Real valMax=1000 "";
  
  parameter Integer significantDigits(min=1) = 6
    "Number of significant digits to be shown, pressure";
  parameter Real colorMap[:,3]=Colors.ColorMaps.jet();
  
  
  //----------------------------------------
  // variables
  //----------------------------------------
  Real vecRGB[3];
  
  
  //----------------------------------------
  // interface
  //----------------------------------------
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  
equation
  vecRGB=Colors.scalarToColor(u, valMin, valMax, colorMap);
  
  
annotation(
    defaultComponentName = "Disp",
    Icon(
      graphics = {Rectangle(fillColor = {255, 255, 255}, 
      fillPattern = FillPattern.Solid, 
      extent = {{-100, 60}, {100, -60}}), 
      Text(extent = {{-100, 20}, {100, -20}}, 
      textString = DynamicSelect("0.0", String(u, 6, 0, true)))}, 
      coordinateSystem(extent = {{-100, -60}, {100, 60}})
    ));
end DispColorGrad00;
