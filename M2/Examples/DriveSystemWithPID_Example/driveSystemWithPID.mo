model driveSystemWithPID


  parameter Modelica.Units.SI.Angle driveAngle=1.570796326794897 
    "Reference distance to move";
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(
    phi(fixed=true, start=0), 
    J=1, 
    a(fixed=true, start=0)) annotation (Placement(transformation(origin={-23.9465,25.6137}, 
extent={{-10,-10},{10,10}})));

              Modelica.Mechanics.Rotational.Sources.Torque torque annotation (Placement(transformation(origin={-57.9361,25.9465}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.SpringDamper spring(
    c=1e4, 
    d=100, 
    stateSelect=StateSelect.prefer, 
    w_rel(fixed=true)) annotation (Placement(transformation(origin={18.3685,25.6137}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia2(J=2) annotation (
      Placement(transformation(origin={55.3551,25.6137}, 
extent={{-10,-10},{10,10}})));

  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation (
      Placement(transformation(origin={-55.899,-24.6894}, 
extent={{10,-10},{-10,10}})));
  Modelica.Blocks.Sources.KinematicPTP kinematicPTP(
    startTime=0.5, 
    deltaq={driveAngle}, 
    qd_max={1}, 
    qdd_max={1}) annotation (Placement(transformation(origin={-174.196,26.6716}, 
extent={{-10,-10},{10,10}})));




  Modelica.Mechanics.Rotational.Sources.ConstantTorque loadTorque(
      tau_constant=10, useSupport=false) annotation (Placement(transformation(origin={91.0029,26.2794}, 
extent={{5,-5},{-5,5}})));
  swc_model.swc swc1(rPORT1(filter=false)) 
    annotation (Placement(transformation(origin={-120.154,28.2913}, 
extent={{-13.3284,-11.997},{13.3284,11.997}})));
initial equation
  der(spring.w_rel) = 0;
equation
  connect(swc1.u, kinematicPTP.y[1]) 
  annotation(Line(origin={-153,29}, 
points={{16.7422,-2.26602},{-10.1958,-2.26602},{-10.1958,-2.32842}}, 
color={0,0,127}));
  connect(swc1.pport, torque.tau) 
  annotation(Line(origin={-87,27}, 
points={{-18.3815,-0.385785},{17.0639,-0.385785},{17.0639,-1.05347}}, 
color={0,0,127}));
  connect(speedSensor.w, swc1.u1) 
  annotation(Line(origin={-102,-1}, 
points={{35.101,-23.6894},{-46.528,-23.6894},{-46.528,23.9007},{-34.213,23.9007}}, 
color={0,0,127}));
  connect(inertia1.flange_a, torque.flange) 
  annotation(Line(origin={-41,26}, 
  points={{7.0535,-0.386309},{-6.93613,-0.386309},{-6.93613,-0.0534706}}, 
  color={0,0,0}));
  connect(inertia1.flange_b, spring.flange_a) 
  annotation(Line(origin={-2,26}, 
points={{-11.9465,-0.386309},{10.3685,-0.386309},{10.3685,-0.386309}}, 
color={0,0,0}));
  connect(inertia2.flange_a, spring.flange_b) 
  annotation(Line(origin={37,26}, 
  points={{8.3551,-0.386309},{-8.63153,-0.386309},{-8.63153,-0.386309}}, 
  color={0,0,0}));
  connect(loadTorque.flange, inertia2.flange_b) 
  annotation(Line(origin={76,26}, 
  points={{10.0029,0.279367},{-10.6449,0.279367},{-10.6449,-0.386309}}, 
  color={0,0,0}));
  connect(inertia1.flange_b, speedSensor.flange) 
  annotation(Line(origin={-28,0}, 
points={{14.0535,25.6137},{17.0535,25.6137},{17.0535,-24.6894},{-17.899,-24.6894}}, 
color={0,0,0}));


end driveSystemWithPID;