within FluidSystemComponents.CommonAnyFluid.BaseClasses;

model ClosedVolumeColorP01
  
  //----------------------------------------
  // Import
  //----------------------------------------
  import Colors = Modelica.Mechanics.MultiBody.Visualizers.Colors;
  import units= Modelica.Units.SI;
  //----------------------------------------
  // parameter
  //----------------------------------------
  parameter Visualizers.Types.SwitchUnitVisPressure switchUnitP = Visualizers.Types.SwitchUnitVisPressure.kPa;
  parameter Integer sigDigits(min = 1) = 6 "";
  parameter Real valMin = 100 "";
  parameter Real valMax = 1000 "";
  parameter Real colorMap[:, 3] = Colors.ColorMaps.jet() annotation(HideResult = true);
  //----------------------------------------
  // variables
  //----------------------------------------
  units.Pressure p;
  //
  Real vecRGB[3];
  Real pVis;
  Real pMinContour;
  Real pMaxContour;
  
  
equation
  
  //----------
  if (switchUnitP == Visualizers.Types.SwitchUnitVisPressure.kPa) then
    pVis = p/1000.0;
    pMinContour = valMin/1000.0;
    pMaxContour = valMax/1000.0;
  else
    pVis = p;
    pMinContour = valMin;
    pMaxContour = valMax;
  end if;
//----------
  vecRGB = Colors.scalarToColor(pVis, pMinContour, pMaxContour, colorMap);
  
  
  
  annotation(
    defaultComponentName = "Vol",
    Icon(graphics = {Ellipse( fillColor = DynamicSelect({85, 170, 255}, {vecRGB[1], vecRGB[2], vecRGB[3]}), pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {0, -130}, extent = {{-100, 10}, {100, -10}}, textString = DynamicSelect("0.0", String(pVis, sigDigits, 0, true))), Text(extent = {{-150, 12}, {150, -18}}, textString = "V=%V")}));
    
    
end ClosedVolumeColorP01;
