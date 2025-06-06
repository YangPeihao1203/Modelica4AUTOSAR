model ContinousControl


  Modelica.Mechanics.Rotational.Components.Inertia load(J=10, 
    phi(fixed=true, start=0), 
    w(fixed=true, start=0)) 
    annotation (Placement(transformation(origin={38.5823,-6.65823}, 
extent={{-10.8354,-10.8354},{10.8354,10.8354}})));

  Modelica.Blocks.Sources.KinematicPTP2 kinematicPTP(
    q_end={Modelica.Constants.pi}, 
    qd_max={2}, 
    qdd_max={3}) 
    annotation (Placement(transformation(origin={-183.661,-0.821943}, 
extent={{-17.443,-17.443},{17.443,17.443}})));

      Modelica.Mechanics.Rotational.Sensors.SpeedSensor speed       annotation (
     Placement(transformation(origin={77.0759,-37.6835}, 
extent={{-11.7089,-11.7089},{7.02532,7.02532}}, 
rotation=-90)));

          Modelica.Mechanics.Rotational.Sources.Torque torque 
    annotation (Placement(transformation(origin={-2.81646,-6.3038}, 
extent={{-11.5127,-10.8354},{11.5127,10.8354}})));


      Modelica.Mechanics.Rotational.Sensors.AngleSensor angle annotation (
      Placement(transformation(origin={115.595,-34.1013}, 
extent={{9.18987,-9.18987},{-9.18987,9.18987}}, 
rotation=90)));
  .M2.Examples.ContinousControl_Example.swc_model.swc_control swc_control1(iRV(sample_time_target=0,sample_time_source=0)) 
    annotation (Placement(transformation(origin={-65.924,-3.54429}, 
extent={{-24.1772,-25.9494},{24.1772,25.9494}})));
  annotation(experiment(Algorithm=Dassl,InlineIntegrator=false,InlineStepSize=false,NumberOfIntervals=500,StartTime=0,StopTime=4,Tolerance=0.0001),__MWORKS(ContinueSimConfig(SaveContinueFile="false",SaveBeforeStop="false",NumberBeforeStop=1,FixedContinueInterval="false",ContinueIntervalLength=4,ContinueTimeVector)));
equation
  connect(swc_control1.u, kinematicPTP.q[1]) 
  annotation(Line(origin={-148,16}, 
points={{53.0747,-2.99537},{-16.4734,-2.99537},{-16.4734,-2.86754}}, 
color={0,0,127}));
  connect(swc_control1.pport, torque.tau) 
  annotation(Line(origin={-26,-3}, 
points={{-12.0743,-2.75162},{9.36835,-2.75162},{9.36835,-3.3038}}, 
color={0,0,127}));
  connect(torque.flange, load.flange_a) 
  annotation(Line(origin={18,-6}, 
  points={{-9.3038,-0.303797},{9.74684,-0.303797},{9.74684,-0.658228}}, 
  color={0,0,0}));
  connect(load.flange_b, angle.flange) 
  annotation(Line(origin={83,-16}, 
  points={{-33.5823,9.34177},{32.5949,9.34177},{32.5949,-8.91139}}, 
  color={0,0,0}));
  connect(speed.flange, load.flange_b) 
  annotation(Line(origin={62,-16}, 
  points={{12.7342,-9.97468},{12.7342,9.34177},{-12.5823,9.34177}}, 
  color={0,0,0}));
  connect(speed.w, swc_control1.u2) 
  annotation(Line(origin={-8,-32}, 
points={{82.73411,-13.6455},{82.73411,-23.5379},{-96.8893,-23.5379},{-96.8893,16.8672},{-82.0033,16.8672}}, 
color={0,0,127}));
  connect(angle.phi, swc_control1.u1) 
  annotation(Line(origin={-6,-32}, 
points={{121.595,-12.2102},{121.595,-36.6406},{-137.875,-36.6406},{-137.875,14.7518},{-122.564,14.7518}}, 
color={0,0,127}));


end ContinousControl;