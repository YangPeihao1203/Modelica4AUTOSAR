package swc_model
  model Runnable_PID
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;
    Modelica.Blocks.Continuous.Integrator integrator(initType=Modelica.Blocks.Types.Init.InitialState) 
      annotation (Placement(transformation(origin={-54.3313,38.3209}, 
extent={{-10,-10},{10,10}})));


        Modelica.Blocks.Continuous.LimPID PI(
      k=100, 
      Ti=0.1, 
      yMax=12, 
      Ni=0.1, 
      initType=Modelica.Blocks.Types.Init.SteadyState, 
      controllerType=Modelica.Blocks.Types.SimpleController.PI, 
      limiter(u(start = 0)), 
      Td=0.1) annotation (Placement(transformation(origin={9.58394,-8.00297}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-121.486,37.9435}, 
extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={109.837,-6.65676}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-118.49,-55.5839}, 
extent={{-20,-20},{20,20}})));
  equation
    connect(integrator.y, PI.u_s) 
    annotation(Line(origin={-83,-8}, 
points={{39.6687,46.3209},{68.2689,46.3209},{68.2689,-0.00297},{80.58394,-0.00297}}, 
color={0,0,127}));
    connect(integrator.u, u) 
    annotation(Line(origin={-174.666,40.5973}, 
points={{108.334,-2.27638},{53.18,-2.27638},{53.18,-2.65379}}, 
color={0,0,127}));
    connect(PI.y, y) 
    annotation(Line(origin={-35,-7}, 
points={{55.5839,-1.00297},{144.837,-1.00297},{144.837,0.34324}}, 
color={0,0,127}));
    connect(PI.u_m, u1) 
    annotation(Line(origin={-54,-38}, 
    points={{63.5839,17.997},{63.5839,-17.5839},{-64.4904,-17.5839}}, 
    color={0,0,127}));


  end Runnable_PID;
  model swc
    Runnable_PID runnable_PID 
      annotation (Placement(transformation(origin={2.16352,-12.315}, 
extent={{-28.8053,-18.321},{28.8053,18.321}})));
    VisibleElements.RPORT rPORT(filter=false) 
      annotation (Placement(transformation(origin={-74.8882,-4.99253}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.PPORT pport 
      annotation (Placement(transformation(origin={110.835,-13.9792}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-121.153,-5.32543}, 
extent={{-20,-20},{20,20}})));
    VisibleElements.RPORT rPORT1 
      annotation (Placement(transformation(origin={-75.5542,-44.6003}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-120.487,-44.9331}, 
extent={{-20,-20},{20,20}})));
  equation
    connect(rPORT.u, u) 
    annotation(Line(origin={-152.082,0.690935}, 
points={{66.9436,-5.98346},{30.929,-5.98346},{30.929,-6.01636}}, 
color={0,0,127}));
    connect(runnable_PID.u, rPORT.y_) 
    annotation(Line(origin={-81.7489,-6.96434}, 
points={{48.918,1.60097},{16.9107,1.60097},{16.9107,1.57181}}, 
color={0,0,127}));
    connect(runnable_PID.y, pport) 
    annotation(Line(origin={59,-6}, 
points={{-25.1976,-7.53461},{51.835,-7.53461},{51.835,-7.9792}}, 
color={0,0,127}));
    connect(runnable_PID.u1, rPORT1.y_) 
    annotation(Line(origin={-51,-28}, 
points={{19.0321,5.50147},{1.05887,5.50147},{1.05887,-17.0003},{-14.5042,-17.0003}}, 
color={0,0,127}));
    connect(rPORT1.u, u1) 
    annotation(Line(origin={-102,-44}, 
points={{16.1958,-0.900293},{-18.4871,-0.900293},{-18.4871,-0.9331}}, 
color={0,0,127}));

  end swc;

end swc_model;