within FluidSystemComponents.Interfaces;

connector StringVectorInput = input String "String input connector used for vector of connectors" 
  annotation(
  defaultComponentName = "u",
  Icon(graphics = {Ellipse(lineColor = {0, 170, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}})}, coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = false, initialScale = 0.2)),
  Diagram(coordinateSystem(preserveAspectRatio = false, initialScale = 0.2, extent = {{-100, -100}, {100, 100}}), graphics = {Text(textColor = {0, 0, 127}, extent = {{-10, 85}, {-10, 60}}, textString = "%name"), Ellipse(lineColor = {0, 170, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Solid, extent = {{-50, 50}, {50, -50}})}),
  Documentation(info = "<html>
<p>
String input connector that is used for a vector of connectors,
</p>
</html>"));
