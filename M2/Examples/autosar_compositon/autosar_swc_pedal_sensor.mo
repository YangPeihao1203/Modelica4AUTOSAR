model autosar_swc_pedal_sensor
  annotation (Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Rectangle(origin={0,0}, 
fillColor={255,255,255}, 
fillPattern=FillPattern.Solid, 
extent={{-100,100},{100,-100}}), Text(origin={-2,85}, 
lineColor={0,0,0}, 
extent={{-72,11},{72,-11}}, 
textString="autosar_swc_pedal_sensor", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None), Text(origin={2.21563,-115.656}, 
lineColor={0,0,0}, 
extent={{-46.9713,11.2997},{46.9713,-11.2997}}, 
textString="%name", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None)}));
  .M2.Examples.autosar_compositon.Runnable_Step_sys_pedal_sensor runnable_Step_sys(Setpoint_Lookup(smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)) 
    annotation (Placement(transformation(origin = {21.16666507720944, 5.674073928119536}, 
      extent = {{-22.0, -10.740744910879544}, {22.0, 10.740744910879542}})));
  VisibleElements.RPORT APP_HwIO_Value(filter=false) 
    annotation (Placement(transformation(origin = {-50.41666746139528, 6.333333520988607}, 
      extent = {{-9.583332538604722, -11.111117366286976}, {9.583332538604743, 11.111117366286974}})));
  VisibleElements.PPORT APP_Percent_Value 
    annotation (Placement(transformation(origin = {116.56249999999996, 5.999999999999998}, 
      extent = {{-16.56249999999997, -16.562500000000007}, {16.562500000000014, 16.562500000000004}})));
  Modelica.Blocks.Interfaces.RealInput APP_HwIO_Value_input 
    annotation (Placement(transformation(origin = {-120.00000000000001, 5.999999999999998}, 
      extent = {{-20.0, -20.0}, {20.0, 20.0}})));
equation
  connect(runnable_Step_sys.APP_HwIO_Value_read, APP_HwIO_Value.y_) 
    annotation (Line(origin = {-25.0, 3.000000000000001}, 
      points = {{22.0, 3.0}, {-16.0, 3.0}}, 
      color = {0, 0, 127}));
  connect(runnable_Step_sys.APP_Percent_Value_write, APP_Percent_Value) 
    annotation (Line(origin = {83.0, -3.999999999999999}, 
      points = {{-38.0, 10.0}, {34.0, 10.0}}, 
      color = {0, 0, 127}));
  connect(APP_HwIO_Value.u, APP_HwIO_Value_input) 
    annotation (Line(origin = {-85.0, 6.0}, 
      points = {{25.0, 0.0}, {-35.0, 0.0}}, 
      color = {0, 0, 127}));
end autosar_swc_pedal_sensor;