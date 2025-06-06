model Runnable_Step_sys_controller
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;
  Modelica.Blocks.Interfaces.RealInput APP_Percent_Value_read 
    annotation (Placement(transformation(origin = {-112.42967700958253, 51.179707527160645}, 
      extent = {{-11.249969482421875, -11.249969482421871}, {11.24996948242189, 11.249969482421868}})));
  Modelica.Blocks.Interfaces.RealInput TPS_Percent_Value_read 
    annotation (Placement(transformation(origin = {-111.99999999999997, -44.82029247283936}, 
      extent = {{-10.820292472839355, -10.820292472839355}, {10.820292472839327, 10.820292472839363}})));
  Modelica.Blocks.Interfaces.RealOutput ThrCmd_Percent_Value_write 
    annotation (Placement(transformation(origin={108.194,1.03226}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Math.Add add(k2 = -1) 
    annotation (Placement(transformation(extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  Modelica.Blocks.Continuous.LimPID DiscretePIDController(Td=0,yMax=100,Ni=0.001) 
    annotation (Placement(transformation(origin={56.258,0.774196}, 
extent={{-13.6129,-13.6129},{13.6129,13.6129}})));
  Modelica.Blocks.Sources.Constant const(k=0) 
    annotation (Placement(transformation(origin = {34.5806, -44.6452}, extent = {{-10, -10}, {10, 10}})));
  equation
  connect(add.u1, APP_Percent_Value_read) 
    annotation (Line(origin = {-206.0, 28.0}, 
      points = {{194.0, -22.0}, {170.0, -22.0}, {170.0, 23.0}, {94.0, 23.0}}, 
      color = {0, 0, 127}));
  connect(add.u2, TPS_Percent_Value_read) 
    annotation (Line(origin = {-206.0, -10.0}, 
      points = {{194.0, 4.0}, {170.0, 4.0}, {170.0, -35.0}, {94.0, -35.0}}, 
      color = {0, 0, 127}));
  connect(add.y, DiscretePIDController.u_s) 
  annotation(Line(origin={26,1}, 
points={{-15,-1},{13.9225,-1},{13.9225,-0.225804}}, 
color={0,0,127}));
  connect(DiscretePIDController.y, ThrCmd_Percent_Value_write) 
  annotation(Line(origin={87,1}, 
points={{-15.7678,-0.225804},{21.1935,-0.225804},{21.1935,0.0322581}}, 
color={0,0,127}));
  connect(const.y, DiscretePIDController.u_m) 
  annotation(Line(origin={49,-28}, 
points={{-3.4194,-16.6452},{7.25801,-16.6452},{7.25801,12.4387}}, 
color={0,0,127}));
  end Runnable_Step_sys_controller;