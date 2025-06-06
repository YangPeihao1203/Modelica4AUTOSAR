model Runnable_Step_sys_pedal_sensor
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;
  Modelica.Blocks.Interfaces.RealInput APP_HwIO_Value_read 
    annotation (Placement(transformation(origin = {-112.0, 1.9999999999999991}, 
      extent = {{-12.0, -12.0}, {12.0, 12.0}})));
  Modelica.Blocks.Interfaces.RealOutput APP_Percent_Value_write 
    annotation (Placement(transformation(origin = {110.0, 1.9999999999999982}, 
      extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  Utilities.DataTypeConversion dataTypeConversion(conversionMode = Utilities.DataTypeConversion.ConversionMode.IntToReal) 
    annotation (Placement(transformation(origin = {-30.000000000000014, 2.899999999999995}, 
      extent = {{-19.999999999999986, -10.000000000000002}, {20.000000000000014, 9.999999999999998}})));
  Modelica.Blocks.Tables.CombiTable1Ds Setpoint_Lookup(table = {{170, 0}, {251.5, 10}, {333, 20}, {414.5, 30}, {496, 40}, {577.5, 50}, {659, 60}, {740.5, 70}, {822, 80}, {903.5, 90}, {985, 100}}) 
    annotation (Placement(transformation(origin = {59.999999999999986, 2.0}, 
      extent = {{-11.333335876464837, -11.333335876464847}, {11.33333587646485, 11.333335876464849}})));
equation
  connect(dataTypeConversion.y, Setpoint_Lookup.u) 
    annotation (Line(origin = {-99.0, 22.0}, 
      points = {{92.0, -20.0}, {145.0, -20.0}}, 
      color = {0, 0, 127}));
  connect(Setpoint_Lookup.y[1], APP_Percent_Value_write) 
    annotation (Line(origin = {-14.0, 15.0}, 
      points = {{86.0, -13.0}, {124.0, -13.0}}, 
      color = {0, 0, 127}));
  connect(dataTypeConversion.u, APP_HwIO_Value_read) 
    annotation (Line(origin = {-69.0, 3.0}, 
      points = {{16.0, -1.0}, {-43.0, -1.0}}, 
      color = {0, 0, 127}));
end Runnable_Step_sys_pedal_sensor;