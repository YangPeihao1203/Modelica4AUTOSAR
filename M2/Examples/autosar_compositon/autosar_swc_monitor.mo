model autosar_swc_monitor
  annotation (Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Rectangle(origin={0,0}, 
fillColor={255,255,255}, 
fillPattern=FillPattern.Solid, 
extent={{-100,100},{100,-100}}), Text(origin={-3,85}, 
lineColor={0,0,0}, 
extent={{-65,9},{65,-9}}, 
textString="autosar_swc_monitor", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None), Text(origin={2.21563,-115.656}, 
lineColor={0,0,0}, 
extent={{-46.9713,11.2997},{46.9713,-11.2997}}, 
textString="%name", 
textStyle={TextStyle.None}, 
textColor={0,0,0}, 
horizontalAlignment=LinePattern.None)}));
  VisibleElements.RPORT TPS_Seconday_Value(filter=false) 
    annotation (Placement(transformation(origin = {-43.666015624999964, 26.999999999999993}, 
      extent = {{-9.5, -8.999999999999996}, {9.5, 8.999999999999996}})));
  VisibleElements.RPORT TPS_Primary_Value(filter=false) 
    annotation (Placement(transformation(origin = {-42.659562057679196, -20.000000000000014}, 
      extent = {{-10.506453567320783, -9.55045403367987}, {10.506453567320758, 9.550454033679898}})));
  VisibleElements.PPORT TPS_Percent_Value 
    annotation (Placement(transformation(origin = {116.00142407417299, 4.001424074172995}, 
      extent = {{-15.998575925827023, -15.99857592582704}, {15.998575925827023, 15.998575925827005}})));
  .M2.Examples.autosar_compositon.Runnable_Step_sys_monitor runnable_Step_sys 
    annotation (Placement(transformation(origin = {37.0, 3.401827665620665}, 
      extent = {{-27.0, -9.60040359144768}, {27.0, 9.600403591447678}})));
  Modelica.Blocks.Interfaces.RealInput TPS_Seconday_Value_input 
    annotation (Placement(transformation(origin = {-120.00284814834598, 27.016513621010397}, 
      extent = {{-20.0, -20.0}, {20.0, 20.0}})));
  Modelica.Blocks.Interfaces.RealInput TPS_Primary_Value_input 
    annotation (Placement(transformation(origin = {-120.00284814834598, -20.0}, 
      extent = {{-20.0, -20.0}, {20.0, 20.0}})));
equation
  connect(runnable_Step_sys.TPS_Secondary_Value_read, TPS_Seconday_Value.y_) 
    annotation (Line(origin = {-47.0, 36.002848148345954}, 
      points = {{54.0, -28.0}, {50.0, -28.0}, {50.0, -10.0}, {13.0, -10.0}, {13.0, -9.0}}, 
      color = {0, 0, 127}));
  connect(runnable_Step_sys.TPS_Primary_Value_read, TPS_Primary_Value.y_) 
    annotation (Line(origin = {-47.0, 6.002848148345954}, 
      points = {{54.0, -6.0}, {50.0, -6.0}, {50.0, -26.0}, {15.0, -26.0}}, 
      color = {0, 0, 127}));
  connect(runnable_Step_sys.TPS_Percent_Value_write, TPS_Percent_Value) 
    annotation (Line(origin = {86.0, 4.0}, 
      points = {{-30.0, 0.0}, {30.0, 0.0}}, 
      color = {0, 0, 127}));
  connect(TPS_Primary_Value.u, TPS_Primary_Value_input) 
    annotation (Line(origin = {-76.0, -20.0}, 
      points = {{23.0, 0.0}, {-24.0, 0.0}}, 
      color = {0, 0, 127}));
  connect(TPS_Seconday_Value.u, TPS_Seconday_Value_input) 
    annotation (Line(origin = {-76.0, 27.0}, 
      points = {{23.0, 0.0}, {-24.0, 0.0}}, 
      color = {0, 0, 127}));
end autosar_swc_monitor;