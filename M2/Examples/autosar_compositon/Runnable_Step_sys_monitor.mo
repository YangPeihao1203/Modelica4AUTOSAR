model Runnable_Step_sys_monitor
  Modelica.Blocks.Interfaces.RealInput TPS_Secondary_Value_read 
    annotation (Placement(transformation(origin = {-113.3333349227905, 46.0}, 
      extent = {{-13.333334922790527, -13.333334922790527}, {13.333334922790499, 13.333334922790527}})));
  Modelica.Blocks.Interfaces.RealInput TPS_Primary_Value_read 
    annotation (Placement(transformation(origin = {-113.3333349227905, -35.99999999999999}, 
      extent = {{-13.33333306845924, -13.333333068459233}, {13.333333068459268, 13.333333068459226}})));
  Modelica.Blocks.Interfaces.RealOutput TPS_Percent_Value_write 
    annotation (Placement(transformation(origin = {110.0, 2.0}, 
      extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  Modelica.Blocks.Sources.BooleanConstant from_Sencondary(k = false) 
    annotation (Placement(transformation(origin = {-72.08333316778705, 1.9999999999999982}, 
      extent = {{-12.083333167786975, -12.08333316778702}, {12.083333167787046, 12.08333316778702}})));
  Modelica.Blocks.Logical.Switch switch1 
    annotation (Placement(transformation(origin = {42.00000000000003, 2.0}, 
      extent = {{-10.0, -10.0}, {10.0, 10.0}})));
equation
  connect(from_Sencondary.y, switch1.u2) 
    annotation (Line(origin = {-115.0, 30.0}, 
      points = {{56.0, -28.0}, {145.0, -28.0}}, 
      color = {255, 0, 255}));
  connect(switch1.y, TPS_Percent_Value_write) 
    annotation (Line(origin = {-49.0, 30.0}, 
      points = {{102.0, -28.0}, {159.0, -28.0}}, 
      color = {0, 0, 127}));
  connect(switch1.u1, TPS_Secondary_Value_read) 
    annotation (Line(origin = {-156.0, 49.0}, 
      points = {{186.0, -39.0}, {154.0, -39.0}, {154.0, -3.0}, {43.0, -3.0}}, 
      color = {0, 0, 127}));
  connect(switch1.u3, TPS_Primary_Value_read) 
    annotation (Line(origin = {-156.0, 1.0}, 
      points = {{186.0, -7.0}, {156.0, -7.0}, {156.0, -37.0}, {43.0, -37.0}}, 
      color = {0, 0, 127}));
end Runnable_Step_sys_monitor;