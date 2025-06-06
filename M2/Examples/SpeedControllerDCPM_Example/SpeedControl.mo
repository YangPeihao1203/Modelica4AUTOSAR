model SpeedControl
  swc_model.swc swc1 
    annotation (Placement(transformation(origin={-164.422,8.65378}, 
extent={{-26.6419,-17.9881},{26.6419,17.9881}})));


  replaceable parameter Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.DriveDataDCPM driveData constrainedby 
    Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.DriveDataDCPM "DC machine data" 
    annotation (Placement(transformation(origin={-47.5513,-33.3878}, 
extent={{-10,-10},{10,10}})));




  Modelica.Mechanics.Rotational.Components.Inertia loadInertia(J=driveData.JL) 
    annotation (Placement(transformation(extent={{50,-50},{70,-30}})));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=270, 
        origin={50,-70})));


  Modelica.Blocks.Sources.Step step(
    offset=0, 
    height=driveData.motorData.wNominal, 
    startTime=0.2)                       annotation (Placement(transformation(origin={-261.56,13.6315}, 
extent={{10,10},{-10,-10}}, 
rotation=180)));

          Modelica.Mechanics.Rotational.Sources.TorqueStep loadTorque(
    stepTorque=-driveData.tauNominal, 
    offsetTorque=0, 
    startTime=0.8) 
    annotation (Placement(transformation(extent={{100,-50},{80,-30}})));

  Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.Battery source(
    INominal=driveData.motorData.IaNominal, V0=driveData.VBat) 
    annotation (Placement(transformation(origin={29.0015,75.0074}, 
extent={{10,-10},{-10,10}}, 
rotation=180)));


          Modelica.Electrical.Machines.Examples.ControlledDCDrives.Utilities.DcdcInverter armatureInverter(
    fS=driveData.fS, 
    Td=driveData.Td, 
    Tmf=driveData.Tmf, 
    VMax=driveData.VaMax) 
    annotation (Placement(transformation(origin={30.3328,9.97028}, 
extent={{-10,-10},{10,10}})));
      Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm(
    TaOperational=driveData.motorData.TaNominal, 
    VaNominal=driveData.motorData.VaNominal, 
    IaNominal=driveData.motorData.IaNominal, 
    wNominal=driveData.motorData.wNominal, 
    TaNominal=driveData.motorData.TaNominal, 
    Ra=driveData.motorData.Ra, 
    TaRef=driveData.motorData.TaRef, 
    La=driveData.motorData.La, 
    Jr=driveData.motorData.Jr, 
    frictionParameters=driveData.motorData.frictionParameters, 
    phiMechanical(fixed=true), 
    wMechanical(fixed=true), 
    coreParameters=driveData.motorData.coreParameters, 
    strayLoadParameters=driveData.motorData.strayLoadParameters, 
    brushParameters=driveData.motorData.brushParameters, 
    ia(fixed=true), 
    Js=driveData.motorData.Js, 
    alpha20a=driveData.motorData.alpha20a) 
    annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
equation
  connect(swc1.u1, step.y) 
  annotation(Line(origin={-253.471,-11.2927}, 
points={{57.1263,25.2152},{2.91085,25.2152},{2.91085,24.9242}}, 
color={0,0,127}));
  connect(speedSensor.w, swc1.u2) 
  annotation(Line(origin={-73,-40}, 
points={{123,-41},{123,-44},{-163.973,-44.6972},{-163.973,43.5049},{-123.699,43.5049}}, 
color={0,0,127}));
  connect(armatureInverter.iMot, swc1.u3) 
  annotation(Line(origin={-89,-11}, 
points={{108.333,14.9703},{85.6999,14.9703},{85.6999,-44.6077},{-130.843,-44.6077},{-130.843,4.74584},{-107.877,4.74584}}, 
color={0,0,127}));
  connect(armatureInverter.vDC, swc1.u) 
  annotation(Line(origin={-89,10}, 
points={{108.333,5.97028},{87.364,5.97028},{87.364,37.2571},{-147.307,37.2571},{-147.307,14.1604},{-107.699,14.1604}}, 
color={0,0,127}));
  connect(swc1.y, armatureInverter.vRef) 
  annotation(Line(origin={-58,0}, 
points={{-76.8933,10.5098},{76.3328,10.5098},{76.3328,9.97028}}, 
color={0,0,127}));
  connect(source.pin_n, armatureInverter.pin_nBat) 
  annotation(Line(origin={24,44}, 
points={{-0.998514,21.0074},{-0.998514,-24.0297},{0.332838,-24.0297}}, 
color={0,0,255}));
  connect(source.pin_p, armatureInverter.pin_pBat) 
  annotation(Line(origin={36,42}, 
  points={{-0.998514,23.0074},{-0.998514,-22.0297},{0.332838,-22.0297}}, 
  color={0,0,255}));
  connect(armatureInverter.pin_nMot, dcpm.pin_an) 
  annotation(Line(origin={24,-15}, 
  points={{0.3328,14.97028},{0.3328,-15},{0,-15}}, 
  color={0,0,255}));
  connect(armatureInverter.pin_pMot, dcpm.pin_ap) 
  annotation(Line(origin={36,-15}, 
  points={{0.3328,14.97028},{0.3328,-15},{0,-15}}, 
  color={0,0,255}));
  connect(loadInertia.flange_a, dcpm.flange) 
  annotation(Line(origin={45,-40}, 
  points={{5,0},{-5,0}}, 
  color={0,0,0}));
  connect(loadInertia.flange_b, loadTorque.flange) 
  annotation(Line(origin={75,-40}, 
  points={{-5,0},{5,0}}, 
  color={0,0,0}));
  connect(loadInertia.flange_a, speedSensor.flange) 
  annotation(Line(origin={50,-50}, 
  points={{0,10},{0,-10}}, 
  color={0,0,0}));


end SpeedControl;