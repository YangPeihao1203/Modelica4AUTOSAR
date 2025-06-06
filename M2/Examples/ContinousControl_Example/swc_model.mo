package swc_model
  model SlowControlRunnable
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;


    Modelica.Blocks.Math.Feedback feedback1 
      annotation (Placement(transformation(origin={-35.5447,-5.77216}, 
  extent={{-11.3671,-11.3671},{11.3671,11.3671}})));

    Modelica.Blocks.Math.Gain gain(k=20) 
      annotation (Placement(transformation(origin={36.2278,-4.53165}, 
  extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-120.506,40.4051}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-121.214,-41.8228}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={115.722,-4.07594}, 
  extent={{-14.4304,-14.4304},{14.4304,14.4304}})));
  equation
    connect(feedback1.y, gain.u) 
    annotation(Line(origin={-94,12}, 
  points={{68.6856,-17.7722},{118.228,-17.7722},{118.228,-16.5316}}, 
  color={0,0,127}));
    connect(feedback1.u1, u) 
    annotation(Line(origin={-146,10}, 
  points={{101.362,-15.7722},{60.937,-15.7722},{60.937,30.4051},{25.494,30.4051}}, 
  color={0,0,127}));
    connect(feedback1.u2, u1) 
    annotation(Line(origin={-136,-21}, 
  points={{100.455,6.13416},{100.455,-20.8228},{14.786,-20.8228}}, 
  color={0,0,127}));
    connect(gain.y, y) 
    annotation(Line(origin={-5,9}, 
  points={{52.2278,-13.5316},{120.722,-13.5316},{120.722,-13.07594}}, 
  color={0,0,127}));

  end SlowControlRunnable;
  model FastControlRunnable
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;


    Modelica.Blocks.Continuous.PI PI(
      k=100, 
      initType=Modelica.Blocks.Types.Init.InitialState, 
      x_start=0, 
      T=0.5) 
      annotation (Placement(transformation(origin={25.0633,-4.88608}, 
  extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Math.Feedback feedback2 
      annotation (Placement(transformation(origin={-23.3165,-4.70891}, 
  extent={{-22.7089,-22.7089},{22.7089,22.7089}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-121.215,43.9494}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-121.215,-48.2025}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.937,-4.6076}, 
  extent={{-10,-10},{10,10}})));
  equation
    connect(feedback2.y, PI.u) 
    annotation(Line(origin={-10.5316,-5.59494}, 
  points={{7.65319,0.88603},{23.5949,0.88603},{23.5949,0.708861}}, 
  color={0,0,127}));
    connect(feedback2.u1, u) 
    annotation(Line(origin={-138.595,26.2911}, 
  points={{97.1113,-31},{97.1113,-16.114},{75.1367,-16.114},{75.1367,17.6583},{17.3799,17.6583}}, 
  color={0,0,127}));
    connect(feedback2.u2, u1) 
    annotation(Line(origin={-118,-32}, 
  points={{94.6835,9.12397},{94.6835,-16.2025},{-3.215,-16.2025}}, 
  color={0,0,127}));
    connect(PI.y, y) 
    annotation(Line(origin={79,8}, 
  points={{-42.9367,-12.8861},{31.937,-12.8861},{31.937,-12.6076}}, 
  color={0,0,127}));


  end FastControlRunnable;
  model swc_control
    .M2.Examples.ContinousControl_Example.swc_model.SlowControlRunnable slowControlRunnable 
      annotation (Placement(transformation(origin={-73.3671,22.3291}, 
  extent={{-35.1646,-19.2152},{35.1646,19.2152}})));
    .M2.Examples.ContinousControl_Example.swc_model.FastControlRunnable fastControlRunnable 
      annotation (Placement(transformation(origin={60.2532,-7.97462}, 
  extent={{-28.4304,-15.4937},{28.4304,15.4937}})));
    VisibleElements.RPORT rPORT(sample_time=0.1) 
      annotation (Placement(transformation(origin={-175.797,32.6077}, 
  extent={{-10,-10.3544},{10,10.3544}})));
    VisibleElements.RPORT rPORT1(sample_time=0.1) 
      annotation (Placement(transformation(origin={-210.532,14.5317}, 
  extent={{-10,-10},{10,10}})));
    VisibleElements.RPORT rPORT2(sample_time=0.1) 
      annotation (Placement(transformation(origin={-8.50633,-41.8228}, 
  extent={{-10,-10},{10,10}})));
    VisibleElements.PPORT pport 
      annotation (Placement(transformation(origin={115.19,-8.50632}, 
  extent={{-13.8987,-13.8987},{13.8987,13.8987}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-264.404,71.2405}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-259.088,-52.8101}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u2 
      annotation (Placement(transformation(origin={-99.5949,-44.6582}, 
  extent={{-20,-20},{20,20}})));
    VisibleElements.IRV iRV(filter=false) 
      annotation (Placement(transformation(origin={-4.11353,21.6895}, 
  extent={{-10,-10},{10,10}})));
    equation
    connect(slowControlRunnable.u, rPORT.y_) 
    annotation(Line(origin={-245,48}, 
  points={{129.257,-17.907},{81.7402,-17.907},{81.7402,-18.1883}}, 
  color={0,0,127}));
    connect(slowControlRunnable.u1, rPORT1.y_) 
    annotation(Line(origin={-245,23}, 
  points={{129.008,-8.70721},{44.5183,-8.70721},{44.5183,-8.86833}}, 
  color={0,0,127}));
    connect(fastControlRunnable.u1, rPORT2.y_) 
    annotation(Line(origin={-60,-13}, 
  points={{85.7913,-2.44297},{66.1513,-2.44297},{66.1513,-29.2228},{61.5437,-29.2228}}, 
  color={0,0,127}));
    connect(fastControlRunnable.y, pport) 
    annotation(Line(origin={58,25}, 
  points={{33.7931,-33.6885},{57.1903,-33.6885},{57.1903,-33.5063}}, 
  color={0,0,127}));
    connect(u, rPORT.u) 
    annotation(Line(origin={-312,57}, 
  points={{47.5958,14.2405},{81.7976,14.2405},{81.7976,-27.1095},{125.922,-27.1095}}, 
  color={0,0,127}));
    connect(rPORT1.u, u1) 
    annotation(Line(origin={-310,22}, 
  points={{89.2183,-7.76833},{80.6837,-7.76833},{80.6837,-74.8101},{50.9116,-74.8101}}, 
  color={0,0,127}));
    connect(rPORT2.u, u2) 
    annotation(Line(origin={-59,-43}, 
    points={{40.24367,0.8772},{-40.5949,0.8772},{-40.5949,-1.6582}}, 
    color={0,0,127}));
    connect(iRV.y_, fastControlRunnable.u) 
    annotation(Line(origin={15,9}, 
  points={{-8.11353,12.0895},{10.7913,12.0895},{10.7913,-10.1652}}, 
  color={0,0,127}));
    connect(iRV.u, slowControlRunnable.y) 
    annotation(Line(origin={-25,21}, 
  points={{9.88647,0.0895264},{-7.67392,0.0895264},{-7.67392,0.5459}}, 
  color={0,0,127}));
    end swc_control;

end swc_model;