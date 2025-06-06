model autosar_composition
  .M2.Examples.autosar_compositon.autosar_swc_throttle_sensor TPS_Secondary 
    annotation (Placement(transformation(origin = {-169.73101617344923, 71.10536799916196}, 
      extent = {{-52.935650493200455, -19.11257207080766}, {52.935650493200484, 19.112572070807587}})));
  .M2.Examples.autosar_compositon.autosar_swc_throttle_sensor TPS_Primary 
    annotation (Placement(transformation(origin = {-171.39768284012442, 4.098115345539683}, 
      extent = {{-54.60231715987558, -21.30372351971469}, {54.60231715987568, 21.303723519714687}})));
  .M2.Examples.autosar_compositon.autosar_swc_monitor Monitor 
    annotation (Placement(transformation(origin={-31.3857,31.5734}, 
extent={{-29.3109,-20.9654},{29.3109,20.9654}})));
  .M2.Examples.autosar_compositon.autosar_swc_pedal_sensor APPSnsr(APP_HwIO_Value(filter=false),runnable_Step_sys(Setpoint_Lookup(smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments,table={{0, 0}, {170, 0}, {251.5, 10}, {333, 20}, {414.5, 30}, {496, 40}, {577.5, 50}, {659, 60}, {740.5, 70}, {822, 80}, {903.5, 90}, {985, 100}}))) 
    annotation (Placement(transformation(origin = {-97.43892530914582, -67.10090887663067}, 
      extent = {{-42.561074690854184, -20.72998123361664}, {42.56107469085423, 20.72998123361667}})));
  .M2.Examples.autosar_compositon.autosar_swc_controller Controller 
    annotation (Placement(transformation(origin = {67.96263722685458, 24.209999999951112}, 
      extent = {{-37.42466321594125, -18.0}, {37.42466321594125, 18.000000000000004}})));
  .M2.Examples.autosar_compositon.autosar_swc_actuator Actuator(runnable_Step_sys(HBridgeDriverLookup(smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments))) 
    annotation (Placement(transformation(origin = {175.35506101306484, 24.000000000000014}, 
      extent = {{-37.35506101306481, -18.000000000000007}, {37.35506101306481, 17.999999999999993}})));
  Modelica.Blocks.Interfaces.RealInput TPS2_HwIO_Value 
    annotation (Placement(transformation(origin={-113.247,66.9039}, 
extent={{-13.0556,-13.0556},{13.0556,13.0556}})));
  Modelica.Blocks.Interfaces.RealInput TPS1_HwIO_Value 
    annotation (Placement(transformation(origin={-114.297,-0.786141}, 
extent={{-13.3355,-13.3355},{13.3355,13.3355}})));
  Modelica.Blocks.Interfaces.RealInput APP_HwIO_Value 
    annotation (Placement(transformation(origin={-113.696,-66.4368}, 
extent={{-13.3333,-13.3333},{13.3333,13.3333}})));
  Modelica.Blocks.Interfaces.RealOutput ThrCmd_HwIO_Value 
    annotation (Placement(transformation(origin={110.359,6.26367}, 
extent={{-10,-10},{10,10}})));
  annotation (Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Rectangle(origin={0,0}, 
fillColor={255,255,255}, 
fillPattern=FillPattern.Solid, 
extent={{-100,100},{100,-100}}), Text(origin={2.21563,-115.656}, 
lineColor={0,0,0}, 
extent={{-46.9713,11.2997},{46.9713,-11.2997}}, 
textString="%name", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None)}));
equation
  connect(Monitor.TPS_Seconday_Value_input, TPS_Secondary.TPS_Percent_Value) 
    annotation (Line(origin = {-96.79536568024878, 56.91335489950332}, 
      points = {{5.0, -20.0}, {-6.0, -20.0}, {-6.0, 15.0}, {-13.0, 15.0}}, 
      color = {0, 0, 127}));
  connect(Monitor.TPS_Primary_Value_input, TPS_Primary.TPS_Percent_Value) 
    annotation (Line(origin = {-99.79536568024878, 15.913354899503314}, 
      points = {{8.0, 12.0}, {-2.0, 12.0}, {-2.0, -11.0}, {-10.0, -11.0}}, 
      color = {0, 0, 127}));
  connect(TPS_Primary.TPS_HwIO_Value_input, TPS1_HwIO_Value) 
    annotation (Line(origin = {-231.79536568024878, 3.9133548995033145}, 
      points = {{-3.0, 1.0}, {-30.0, 1.0}}, 
      color = {0, 0, 127}));
  connect(TPS2_HwIO_Value, TPS_Secondary.TPS_HwIO_Value_input) 
    annotation (Line(origin = {-232.79536568024878, 74.9133548995033}, 
      points = {{-29.0, -4.0}, {2.0, -4.0}, {2.0, -3.0}}, 
      color = {0, 0, 127}));
  connect(APP_HwIO_Value, APPSnsr.APP_HwIO_Value_input) 
    annotation (Line(origin = {-178.79536568024878, -66.08664510049668}, 
      points = {{-27.0, 0.0}, {30.0, 0.0}}, 
      color = {0, 0, 127}));
  connect(Controller.APP_Percent_Value_input, APPSnsr.APP_Percent_Value) 
    annotation (Line(origin={-23.7954,-24.0866}, 
points={{47.375,54.7224},{35.4251,54.7224},{35.4251,-41.7705},{-24.0333,-41.7705}}, 
color={0,0,127}));
  connect(Actuator.ThrCmd_Percent_Value_input, Controller.ThrCmd_Percent_Value) 
    annotation (Line(origin = {99.20463431975122, 24.913354899503314}, 
      points = {{34.0, -1.0}, {12.0, -1.0}}, 
      color = {0, 0, 127}));
  connect(Actuator.ThrCmd_HwIO_Value, ThrCmd_HwIO_Value) 
    annotation (Line(origin = {193.20463431975122, 23.913354899503314}, 
      points = {{24.0, 0.0}, {46.0, 0.0}}, 
      color = {0, 0, 127}));
  connect(Monitor.TPS_Percent_Value, Controller.TPS_Percent_Value_input) 
  annotation(Line(origin={13,27}, 
points={{-10.3846,5.41231},{-10.3846,-12.5931},{10.2637,-12.5931},{10.2637,-5.44025}}, 
color={0,0,127}));
  end autosar_composition;