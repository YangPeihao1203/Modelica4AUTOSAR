model autosar_swc_actuator
  annotation (Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Rectangle(origin={0,0}, 
fillColor={255,255,255}, 
fillPattern=FillPattern.Solid, 
extent={{-100,-100},{100,100}}), Text(origin={-1,86}, 
lineColor={0,0,0}, 
extent={{-71,10},{71,-10}}, 
textString="autosar_swc_actuator", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None), Text(origin={2.21563,-115.656}, 
lineColor={0,0,0}, 
extent={{-46.9713,11.2997},{46.9713,-11.2997}}, 
textString="%name", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None)}));
  VisibleElements.RPORT ThrCmd_Percent_Value(filter=false) 
    annotation (Placement(transformation(origin = {-57.99999999999999, 1.691666666767535}, 
      extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  VisibleElements.PPORT ThrCmd_HwIO_Value 
    annotation (Placement(transformation(origin = {112.66666666639503, 0.6666666663950185}, 
      extent = {{-12.666666666395017, -12.66666666639503}, {12.666666666395031, 12.66666666639503}})));
  .M2.Examples.autosar_compositon.Runnable_Step_sys_actuator runnable_Step_sys(HBridgeDriverLookup(table = {{-100, -2048}, {-90, -1843}, {-80, -1638}, {-70, -1434}, {-60, -1229}, {-50, -1024}, {-40, -819}, {-30, -614}, {-20, -410}, {-10, -205}, {0, 0}, {10, 205}, {20, 410}, {30, 614}, {40, 819}, {50, 1024}, {60, 1229}, {70, 1434}, {80, 1638}, {90, 1843}, {100, 2048}})) 
    annotation (Placement(transformation(origin = {19.000000000000018, 0.6666666663950194}, 
      extent = {{-25.000000000000036, -10.0}, {24.999999999999982, 10.0}})));
  Modelica.Blocks.Interfaces.RealInput ThrCmd_Percent_Value_input 
    annotation (Placement(transformation(origin = {-112.83333333360495, 1.1666666663950114}, 
      extent = {{-13.166666666395031, -13.166666666395024}, {13.166666666395031, 13.166666666395024}})));
equation
  connect(ThrCmd_Percent_Value_input, ThrCmd_Percent_Value.u) 
    annotation (Line(origin = {-165.0, 21.0}, 
      points = {{52.0, -20.0}, {97.0, -20.0}}, 
      color = {0, 0, 127}));
  connect(runnable_Step_sys.Thrcmd_HwIO_Value_write, ThrCmd_HwIO_Value) 
    annotation (Line(origin = {79.0, 24.0}, 
      points = {{-32.0, -23.0}, {34.0, -23.0}}, 
      color = {0, 0, 127}));
  connect(runnable_Step_sys.ThrCmd_Percent_Value_read, ThrCmd_Percent_Value.y_) 
    annotation (Line(origin = {-28.0, 1.0}, 
      points = {{19.0, 0.0}, {-20.0, 0.0}}, 
      color = {0, 0, 127}));
end autosar_swc_actuator;