model Runnable_Step_sys_actuator
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;
  Modelica.Blocks.Interfaces.RealInput ThrCmd_Percent_Value_read 
    annotation (Placement(transformation(origin = {-112.0, 1.2500000037252885}, 
      extent = {{-11.25000000372529, -11.250000003725296}, {11.250000003725276, 11.250000003725296}})));
  Modelica.Blocks.Interfaces.RealOutput Thrcmd_HwIO_Value_write 
    annotation (Placement(transformation(origin = {110.0, -7.105427357601002e-15}, 
      extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  Utilities.DataTypeConversion single 
    annotation (Placement(transformation(origin = {-36.041666664804055, 1.2500000037252832}, 
      extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  Modelica.Blocks.Tables.CombiTable1Ds HBridgeDriverLookup(table={{-100, -2048}, {-90, -1843}, {-80, -1638}, {-70, -1434}, {-60, -1229}, {-50, -1024}, {-40, -819}, {-30, -614}, {-20, -410}, {-10, -205}, {0, 0}, {10, 205}, {20, 410}, {30, 614}, {40, 819}, {50, 1024}, {60, 1229}, {70, 1434}, {80, 1638}, {90, 1843}, {100, 2048}}) 
    annotation (Placement(transformation(origin = {45.333333333333286, -7.105427357601002e-15}, 
      extent = {{-16.66666666666665, -16.66666666666667}, {16.6666666666667, 16.66666666666667}})));
equation
  connect(ThrCmd_Percent_Value_read, single.u) 
    annotation (Line(origin = {-188.0, 32.0}, 
      points = {{76.0, -31.0}, {140.0, -31.0}, {140.0, -32.0}}, 
      color = {0, 0, 127}));
  connect(single.y, HBridgeDriverLookup.u) 
    annotation (Line(origin = {-116.0, 26.0}, 
      points = {{91.0, -26.0}, {141.0, -26.0}}, 
      color = {0, 0, 127}));
  connect(HBridgeDriverLookup.y[1], Thrcmd_HwIO_Value_write) 
    annotation (Line(origin = {12.0, 29.0}, 
      points = {{52.0, -29.0}, {98.0, -29.0}}, 
      color = {0, 0, 127}));
end Runnable_Step_sys_actuator;