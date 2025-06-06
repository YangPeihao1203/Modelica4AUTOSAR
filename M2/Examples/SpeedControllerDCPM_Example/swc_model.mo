package swc_model
  model swc
    Runnable_1 runnable_1_1 
      annotation (Placement(transformation(origin={-13.147,15.3105}, 
extent={{-25.477,-18.321},{25.477,18.321}})));
    Runnable_2 runnable_2_1 
      annotation (Placement(transformation(origin={73.8901,11.3164}, 
extent={{-17.6553,-15.6582},{17.6553,15.6582}})));
    VisibleElements.IRV iRV(filter=false) 
      annotation (Placement(transformation(origin={34.948,16.6419}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.RPORT rPORT(filter=false) 
      annotation (Placement(transformation(origin={-71.228,28.957}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.RPORT rPORT1(filter=false) 
      annotation (Placement(transformation(origin={-71.2275,-27.9584}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.RPORT rPORT2(filter=false) 
      annotation (Placement(transformation(origin={-69.5638,86.5378}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.RPORT rPORT3(filter=false) 
      annotation (Placement(transformation(origin={-72.892,-80.5468}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-121.153,86.2051}, 
extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-119.822,29.2898}, 
extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u2 
      annotation (Placement(transformation(origin={-121.153,-28.624}, 
extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u3 
      annotation (Placement(transformation(origin={-121.819,-82.8767}, 
extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.835,10.318}, 
extent={{-10,-10},{10,10}})));
  equation
    connect(iRV.u, runnable_1_1.y) 
    annotation(Line(origin={-117,17}, 
points={{140.948,-0.958113},{132.006,-0.958113},{132.006,-0.713811}}, 
color={0,0,127}));
    connect(runnable_2_1.u, iRV.y_) 
    annotation(Line(origin={-62,18}, 
points={{114.506,-2.2474},{107.948,-2.2474},{107.948,-1.95811}}, 
color={0,0,127}));
    connect(runnable_1_1.u, rPORT.y_) 
    annotation(Line(origin={-226,32}, 
points={{182.241,-4.67656},{164.822,-4.67656},{164.822,-3.44302}}, 
color={0,0,127}));
    connect(runnable_1_1.u1, rPORT.y_) 
    annotation(Line(origin={-225,22}, 
points={{181.157,-5.77478},{163.822,-5.77478},{163.822,6.55698}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
    connect(runnable_1_1.u2, rPORT1.y_) 
    annotation(Line(origin={-224,-10}, 
points={{180.241,13.9074},{162.822,13.9074},{162.822,-18.3584}}, 
color={0,0,127}));
    connect(runnable_2_1.u3, rPORT1.y_) 
    annotation(Line(origin={-152,-9}, 
points={{204.57,8.16169},{176.279,8.16169},{176.279,-4.15332},{90.8225,-4.15332},{90.8225,-19.3584}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
    connect(runnable_2_1.u1, rPORT2.y_) 
    annotation(Line(origin={-153,45}, 
points={{205.787,-21.0596},{193.472,-21.0596},{193.472,41.1378},{93.4862,41.1378}}, 
color={0,0,127}));
    connect(runnable_2_1.u2, rPORT3.y_) 
    annotation(Line(origin={-152,-27}, 
points={{204.536,32.5709},{195.666,32.5709},{195.666,-53.9468},{89.158,-53.9468}}, 
color={0,0,127}));
    connect(rPORT2.u, u) 
    annotation(Line(origin={-302,64}, 
points={{222.186,22.2378},{180.847,22.2378},{180.847,22.2051}}, 
color={0,0,127}));
    connect(rPORT.u, u1) 
    annotation(Line(origin={-301,30}, 
points={{219.522,-1.34302},{181.178,-1.34302},{181.178,-0.7102}}, 
color={0,0,127}));
    connect(rPORT1.u, u2) 
    annotation(Line(origin={-299,-18}, 
points={{217.522,-10.2584},{177.847,-10.2584},{177.847,-10.624}}, 
color={0,0,127}));
    connect(rPORT3.u, u3) 
    annotation(Line(origin={-303,-62}, 
points={{219.858,-18.8468},{219.858,-20.8767},{181.181,-20.8767}}, 
color={0,0,127}));
    connect(runnable_2_1.y, y) 
    annotation(Line(origin={24.3343,12.6642}, 
points={{69.0119,-1.70787},{86.5007,-1.70787},{86.5007,-2.3462}}, 
color={0,0,127}));

  end swc;
  model Runnable_1
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;

    replaceable parameter Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.DriveDataDCPM driveData constrainedby 
      Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.DriveDataDCPM "DC machine data" 
      annotation (Placement(transformation(origin={-47.5513,-33.3878}, 
  extent={{-10,-10},{10,10}})));


    Modelica.Blocks.Continuous.FirstOrder preFilter(
      k=1, 
      T=driveData.Tfw, 
      initType=Modelica.Blocks.Types.Init.InitialOutput) 
      annotation (Placement(transformation(origin={-50.1486,65.9168}, 
  extent={{-10,-10},{10,10}})));

    Modelica.Blocks.Nonlinear.SlewRateLimiter slewRateLimiter(initType=Modelica.Blocks.Types.Init.InitialOutput, 
        Rising=driveData.aMax) 
      annotation (Placement(transformation(origin={-50.1486,5.28083}, 
  extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-120.155,65.5691}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-120.487,4.99259}, 
  extent={{-20,-20},{20,20}})));

    Modelica.Blocks.Math.Gain tau2i(k=1/driveData.kPhi) annotation (Placement(transformation(origin={57.477,5.31055}, 
  extent={{10,-10},{-10,10}}, 
  rotation=180)));

  Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.LimitedPI speedController(
      initType=Modelica.Blocks.Types.Init.InitialOutput, 
      k=driveData.kpw, 
      Ti=driveData.Tiw, 
      constantLimits=true, 
      yMax=driveData.tauMax) 
      annotation (Placement(transformation(origin={17.8098,4.97771}, 
  extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.502,5.3254}, 
  extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u2 
      annotation (Placement(transformation(origin={-120.155,-62.2407}, 
  extent={{-20,-20},{20,20}})));

  equation
    connect(preFilter.u, u) 
    annotation(Line(origin={-192,11}, 
  points={{129.851,54.9168},{71.845,54.9168},{71.845,54.5691}}, 
  color={0,0,127}));
    connect(slewRateLimiter.u, u1) 
    annotation(Line(origin={-191,-29}, 
  points={{128.851,34.2808},{70.513,34.2808},{70.513,33.99259}}, 
  color={0,0,127}));
    connect(preFilter.y, speedController.u) 
    annotation(Line(origin={-130,0}, 
  points={{90.8514,65.9168},{100.504,65.9168},{100.504,4.97771},{135.81,4.97771}}, 
  color={0,0,127}));
    connect(tau2i.u, speedController.y) 
    annotation(Line(origin={-72,-9}, 
  points={{117.477,14.3105},{100.81,14.3105},{100.81,13.9777}}, 
  color={0,0,127}));
    connect(tau2i.y, y) 
    annotation(Line(origin={-28,-9}, 
  points={{96.477,14.3105},{138.502,14.3105},{138.502,14.3254}}, 
  color={0,0,127}));
    connect(speedController.u_m, u2) 
    annotation(Line(origin={-158,-45}, 
  points={{169.81,37.9777},{169.81,-17.2407},{37.845,-17.2407}}, 
  color={0,0,127}));
  end Runnable_1;
  model Runnable_2
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;

    replaceable parameter Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.DriveDataDCPM driveData constrainedby 
      Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.DriveDataDCPM "DC machine data" 
      annotation (Placement(transformation(origin={-47.5513,-33.3878}, 
  extent={{-10,-10},{10,10}})));


    Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.LimitedPI currentController(
      constantLimits=false, 
      k=driveData.kpI, 
      Ti=driveData.TiI, 
      KFF=driveData.kPhi, 
      initType=Modelica.Blocks.Types.Init.InitialOutput, 
      useFF=true) 
      annotation (Placement(transformation(origin={-36.3388,-2.01189}, 
  extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-121.122,28.3315}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-119.528,80.6224}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u2 
      annotation (Placement(transformation(origin={-120.95,-36.6931}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealInput u3 
      annotation (Placement(transformation(origin={-120.758,-77.6252}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.2,-2.29986}, 
  extent={{-10,-10},{10,10}})));
  equation
    connect(currentController.u, u) 
    annotation(Line(origin={-79,-9}, 
  points={{30.6612,6.98811},{15.6835,6.98811},{15.6835,37.3315},{-42.122,37.3315}}, 
  color={0,0,127}));
    connect(currentController.yMaxVar, u1) 
    annotation(Line(origin={-69,19}, 
  points={{44.6612,-15.0119},{67.3362,-15.0119},{67.3362,61.6224},{-50.528,61.6224}}, 
  color={0,0,127}));
    connect(currentController.u_m, u2) 
    annotation(Line(origin={-77,-43}, 
  points={{34.6612,28.9881},{34.6612,6.3069},{-43.95,6.3069}}, 
  color={0,0,127}));
    connect(currentController.feedForward, u3) 
    annotation(Line(origin={-74,-62}, 
  points={{37.6612,47.9881},{37.6612,-15.6252},{-46.758,-15.6252}}, 
  color={0,0,127}));
    connect(currentController.y, y) 
    annotation(Line(origin={41,-6}, 
  points={{-66.3388,3.98811},{69.2,3.98811},{69.2,3.70014}}, 
  color={0,0,127}));

  end Runnable_2;

end swc_model;