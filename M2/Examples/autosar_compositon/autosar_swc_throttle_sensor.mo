model autosar_swc_throttle_sensor
  annotation (Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Rectangle(origin={0,0}, 
fillColor={255,255,255}, 
fillPattern=FillPattern.Solid, 
extent={{-100,100},{100,-100}}), Text(origin={0,83}, 
lineColor={0,0,0}, 
extent={{-60,13},{60,-13}}, 
textString="autosar_swc_throttle_sensor", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None), Text(origin={2.21563,-115.656}, 
lineColor={0,0,0}, 
extent={{-46.9713,11.2997},{46.9713,-11.2997}}, 
textString="%name", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None)}));
  VisibleElements.RPORT TPS_HwIO_Value(filter=false) 
    annotation (Placement(transformation(origin = {-47.00000000000003, 2.0000000000000018}, 
      extent = {{-11.890860733110458, -11.185812737792732}, {11.89086073311043, 11.185812737792732}})));
  VisibleElements.PPORT TPS_Percent_Value 
    annotation (Placement(transformation(origin = {113.16923773288727, 1.9999999999999964}, 
      extent = {{-12.830762267112732, -12.830762267112732}, {12.830762267112732, 12.830762267112739}})));
  .M2.Examples.autosar_compositon.Runnable_Step_sys_throttle_sensor runnable_Step_sys(TPS_Lookup(extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)) 
    annotation (Placement(transformation(origin = {18.666687011718746, 1.5179329191200406}, 
      extent = {{-23.33331298828125, -13.07179649715586}, {23.333312988281254, 13.07179649715586}})));
  Modelica.Blocks.Interfaces.RealInput TPS_HwIO_Value_input 
    annotation (Placement(transformation(origin = {-115.2222717069089, 1.9999999999999973}, 
      extent = {{-15.222271706908941, -15.222271706908934}, {15.222271706908913, 15.222271706908936}})));
equation
  connect(runnable_Step_sys.y, TPS_Percent_Value) 
    annotation (Line(origin = {-12.0, 17.0}, 
      points = {{48.0, -15.0}, {125.0, -15.0}}, 
      color = {0, 0, 127}));
  connect(TPS_HwIO_Value.y_, runnable_Step_sys.u) 
    annotation (Line(origin = {-168.0, 28.0}, 
      points = {{133.0, -26.0}, {161.0, -26.0}}, 
      color = {0, 0, 127}));
  connect(TPS_HwIO_Value.u, TPS_HwIO_Value_input) 
    annotation (Line(origin = {-199.0, 5.0}, 
      points = {{140.0, -3.0}, {84.0, -3.0}}, 
      color = {0, 0, 127}));
end autosar_swc_throttle_sensor;