model Runnable_Step_sys_throttle_sensor
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;
  Modelica.Blocks.Interfaces.RealInput u 
    annotation (Placement(transformation(origin = {-112.0, 3.0937633514404292}, 
      extent = {{-11.09376335144043, -11.09376335144043}, {11.09376335144043, 11.093763351440428}})));
  Modelica.Blocks.Interfaces.RealOutput y 
    annotation (Placement(transformation(origin = {110.0, 2.0}, 
      extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  Utilities.DataTypeConversion single 
    annotation (Placement(transformation(origin = {-38.453118324279785, 4.196541321277625}, 
      extent = {{-16.11687931153827, -12.253088553746576}, {16.1168793115383, 12.253088553746583}})));
  Modelica.Blocks.Tables.CombiTable1Ds TPS_Lookup(table = {{170, 0}, {249.60000610351562, 10}, {392.20000122070315, 20}, {408.7999877929, 30}, {488.39999, 40}, {568, 50}, {647.5999, 60}, {727.20000, 70}, {806.799998, 80}, {886.4000244, 90}, {966, 100}}) 
    annotation (Placement(transformation(origin = {40.666669845581055, 2.0}, 
      extent = {{-16.666669845581055, -16.666669845581048}, {16.66666984558104, 16.666669845581055}})));
equation
  connect(single.u, u) 
    annotation (Line(origin = {-186.0, 33.0}, 
      points = {{129.0, -30.0}, {74.0, -30.0}}, 
      color = {0, 0, 127}));
  connect(single.y, TPS_Lookup.u) 
    annotation (Line(origin = {-121.0, 32.0}, 
      points = {{101.0, -29.0}, {142.0, -29.0}, {142.0, -30.0}}, 
      color = {0, 0, 127}));
  connect(TPS_Lookup.y[1], y) 
    annotation (Line(origin = {-17.0, 30.0}, 
      points = {{76.0, -28.0}, {127.0, -28.0}}, 
      color = {0, 0, 127}));
end Runnable_Step_sys_throttle_sensor;