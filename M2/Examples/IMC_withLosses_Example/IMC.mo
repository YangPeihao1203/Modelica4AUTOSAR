model IMC
  import Modelica.Constants.pi;
  import Modelica.Units.Conversions.from_rpm;
  import Modelica.Units.Conversions.to_rpm;
  import Modelica.Units.Conversions.from_degC;
  constant Integer m = 3 "Number of phases";
  parameter Modelica.Units.SI.Power PNominal = 18500 "Nominal output";
  parameter Modelica.Units.SI.Voltage VNominal = 400 "Nominal RMS voltage";
  parameter Modelica.Units.SI.Current INominal = 32.85 "Nominal RMS current";
  parameter Real pfNominal = 0.898 "Nominal power factor";
  parameter Modelica.Units.SI.Power PsNominal = sqrt(3) * VNominal * INominal * pfNominal "Nominal stator power";
  parameter Modelica.Units.SI.Power lossNominal = PsNominal - PNominal "Nominal losses";
  parameter Real etaNominal = 0.9049 "Nominal efficiency";
  parameter Modelica.Units.SI.Frequency fNominal = 50 "Nominal frequency";
  parameter Modelica.Units.SI.AngularVelocity wNominal = from_rpm(1462.5) 
    "Nominal speed";
  parameter Modelica.Units.SI.Torque TNominal = PNominal / wNominal 
    "Nominal torque";
  parameter Modelica.Units.SI.Temperature TempNominal = from_degC(90) 
    "Nominal temperature";
  Modelica.Units.SI.Power PelQS = electricalPowerSensorQS.apparentPower.re;
  Modelica.Units.SI.ReactivePower QelQS = electricalPowerSensorQS.apparentPower.im;
  Modelica.Units.SI.ApparentPower SelQS = sqrt(PelQS ^ 2 + QelQS ^ 2);
protected
  parameter Real Ptable[:] = {1E-6, 1845, 3549, 5325, 7521, 9372, 11010, 12930, 
    14950, 16360, 18500, 18560, 20180, 22170} "Table of measured power data";
  parameter Real Itable[:] = {11.0, 11.20, 12.27, 13.87, 16.41, 18.78, 21.07, 
    23.92, 27.05, 29.40, 32.85, 32.95, 35.92, 39.35} "Table of measured current data";
  parameter Real wtable[:] = from_rpm({1500, 1496, 1493, 1490, 1486, 1482, 1479, 1475, 1471, 
    1467, 1462, 1462, 1458, 1453}) "Table of measured speed data";
  parameter Real ctable[:] = {0.085, 0.327, 0.506, 0.636, 0.741, 0.797, 0.831, 
    0.857, 0.875, 0.887, 0.896, 0.896, 0.902, 0.906} "Table of measured power factor data";
  parameter Real etable[:] = {0, 0.7250, 0.8268, 0.8698, 0.8929, 0.9028, 0.9064, 
    0.9088, 0.9089, 0.9070, 0.9044, 0.9043, 0.9008, 0.8972} "Table of measured efficiency data";
public
  output Modelica.Units.SI.Power PmechQS = powerSensorQS.power "Mechanical output";
  output Modelica.Units.SI.Power Ps_simQS = sqrt(3) * VNominal * I_simQS * pf_simQS "Simulated stator power";
  output Modelica.Units.SI.Power Ps_measQS = sqrt(3) * VNominal * I_measQS * pf_measQS "Simulated stator power";
  output Modelica.Units.SI.Power loss_simQS = Ps_simQS - PmechQS "Simulated total losses";
  output Modelica.Units.SI.Power loss_measQS = Ps_measQS - PmechQS "Measured total losses";
  output Modelica.Units.SI.Current I_simQS = currentQuasiRMSSensorQS.I "Simulated current";
  output Modelica.Units.SI.Current I_measQS = combiTable1DsQS.y[1] "Measured current";
  output Modelica.Units.SI.AngularVelocity w_simQS(displayUnit = "rev/min") = imcQS.wMechanical "Simulated speed";
  output Modelica.Units.SI.AngularVelocity w_measQS(displayUnit = "rev/min") = combiTable1DsQS.y[2] "Measured speed";
  output Real pf_simQS = if noEvent(SelQS > Modelica.Constants.small) then PelQS / SelQS else 0 "Simulated power factor";
  output Real pf_measQS = combiTable1DsQS.y[3] "Measured power factor";
  output Real eff_simQS = if noEvent(abs(PelQS) > Modelica.Constants.small) then PmechQS / PelQS else 0 "Simulated efficiency";
  output Real eff_measQS = combiTable1DsQS.y[4] "Measured efficiency";

  Modelica.Magnetic.QuasiStatic.FundamentalWave.BasicMachines.InductionMachines.IM_SquirrelCage 
    imcQS(
    p = imcData.p, 
    fsNominal = imcData.fsNominal, 
    TsRef = imcData.TsRef, 
    alpha20s(displayUnit = "1/K") = imcData.alpha20s, 
    Jr = imcData.Jr, 
    Js = imcData.Js, 
    frictionParameters = imcData.frictionParameters, 
    statorCoreParameters = imcData.statorCoreParameters, 
    strayLoadParameters = imcData.strayLoadParameters, 
    TrRef = imcData.TrRef, 
    TsOperational = TempNominal, 
    TrOperational = TempNominal, 
    wMechanical(fixed = true, start = 2 * pi * imcData.fsNominal / imcData.p), 
    gammar(fixed = true, start = pi / 2), 
    gamma(fixed = true, start = -pi / 2), 
    Rs = imcData.Rs * m / 3, 
    Lssigma = imcData.Lssigma * m / 3, 
    Lm = imcData.Lm * m / 3, 
    Lrsigma = imcData.Lrsigma * m / 3, 
    Rr = imcData.Rr * m / 3, 
    m = m, 
    effectiveStatorTurns = imcData.effectiveStatorTurns, 
    alpha20r = imcData.alpha20r) 
    annotation(Placement(transformation(extent = {{-20, 60}, {0, 80}})));
  Modelica.Magnetic.QuasiStatic.FundamentalWave.Utilities.MultiTerminalBox terminalBoxQS(terminalConnection = "D", m = m) 
    annotation(Placement(transformation(origin = {-8.67062, 99.5153}, 
    extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.QuasiStatic.Polyphase.Sensors.PowerSensor electricalPowerSensorQS(m = m) 
    annotation(Placement(transformation(extent = {{-10, -10}, {10, 10}}, origin = {-40, 
    90})));
  Modelica.Electrical.QuasiStatic.Polyphase.Sensors.CurrentQuasiRMSSensor currentQuasiRMSSensorQS(m = m) 
    annotation(Placement(transformation(origin = {-70, 90}, extent = {{-10, 10}, {10, 
    -10}})));
  Modelica.Electrical.QuasiStatic.Polyphase.Sources.VoltageSource sineVoltageQS(
    final m = m, 
    f = fNominal, 
    V = fill(VNominal / sqrt(3), m)) annotation(Placement(transformation(
    origin = {-90, 70}, 
    extent = {{-10, -10}, {10, 10}}, 
    rotation = 270)));
  Modelica.Electrical.QuasiStatic.Polyphase.Basic.Star starQS(final m = m) annotation(Placement(transformation(
    extent = {{10, -10}, {-10, 10}}, 
    rotation = 90, 
    origin = {-90, 40})));
  Modelica.Electrical.QuasiStatic.SinglePhase.Basic.Ground groundQS annotation(Placement(transformation(origin = {-90, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Sensors.PowerSensor powerSensorQS annotation(Placement(transformation(extent = {{10, 60}, {30, 80}})));
  Modelica.Mechanics.Rotational.Components.Inertia loadInertiaQS(J = imcData.Jr) annotation(Placement(transformation(extent = {{40, 60}, {60, 80}})));
  Modelica.Mechanics.Rotational.Sources.Torque torqueQS annotation(Placement(transformation(extent = {{90, 60}, {70, 80}})));


  Modelica.Blocks.Tables.CombiTable1Ds combiTable1DsQS(table = {{Ptable[j], Itable[j], wtable[j], ctable[j], etable[j]} for j in 1:size(Ptable, 1)}, smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative) annotation(Placement(transformation(extent = {{40, 30}, {60, 50}})));
  parameter
    Modelica.Electrical.Machines.Utilities.ParameterRecords.IM_SquirrelCageData 
    imcData(
    statorCoreParameters(PRef = 410, VRef = 387.9), 
    Jr = 0.12, 
    Rs = 0.56, 
    alpha20s(displayUnit = "1/K") = Modelica.Electrical.Machines.Thermal.Constants.alpha20Copper, 
    Lssigma = 1.52 / (2 * pi * fNominal), 
    frictionParameters(PRef = 180, wRef = wNominal), 
    strayLoadParameters(
    PRef = 0.005 * sqrt(3) * VNominal * INominal * pfNominal, 
    IRef = INominal / sqrt(3), 
    wRef = wNominal), 
    Lm = 66.4 / (2 * pi * fNominal), 
    Lrsigma = 2.31 / (2 * pi * fNominal), 
    Rr = 0.42, 
    alpha20r(displayUnit = "1/K") = Modelica.Electrical.Machines.Thermal.Constants.alpha20Aluminium) 
    "Induction machine data" 
    annotation(Placement(transformation(extent = {{-60, 12}, {-40, 32}})));
  swc_model.swc swc1 
    annotation(Placement(transformation(origin = {36.1147, 8.64093}, 
    extent = {{-10, -10}, {10, 10}})));
equation
  connect(starQS.pin_n, groundQS.pin) annotation(Line(points = {{-90, 30}, {-90, 20}}, color = {85, 170, 255}));
  connect(sineVoltageQS.plug_n, starQS.plug_p) annotation(Line(points = {{-90, 60}, {-90, 50}}, color = {85, 170, 255}));
  connect(terminalBoxQS.plug_sn, imcQS.plug_sn) annotation(Line(points = {{-16, 80}, {-16, 80}}, color = {85, 170, 255}));
  connect(terminalBoxQS.plug_sp, imcQS.plug_sp) annotation(Line(points = {{-4, 80}, {-4, 80}}, color = {85, 170, 255}));

  connect(imcQS.flange, powerSensorQS.flange_a) annotation(Line(points = {{0, 70}, {10, 70}}));
  connect(powerSensorQS.flange_b, loadInertiaQS.flange_a) annotation(Line(points = {{30, 70}, {40, 70}}));
  connect(torqueQS.flange, loadInertiaQS.flange_b) annotation(Line(points = {{70, 70}, {64, 70}, {64, 70}, {68, 70}, {68, 70}, {60, 70}}));
  connect(sineVoltageQS.plug_p, currentQuasiRMSSensorQS.plug_p) annotation(Line(points = {{-90, 80}, {-90, 90}, {-80, 90}}, color = {85, 170, 255}));
  connect(currentQuasiRMSSensorQS.plug_n, electricalPowerSensorQS.currentP) annotation(Line(points = {{-60, 90}, {-50, 90}}, color = {85, 170, 255}));
  connect(electricalPowerSensorQS.currentN, terminalBoxQS.plugSupply) annotation(Line(origin = {-20, 86}, 
    points = {{-10, 4}, {-10, 13.5163}, {11.32938, 13.5163}, {11.32938, 9.5153}}, 
    color = {85, 170, 255}));
  connect(electricalPowerSensorQS.currentP, electricalPowerSensorQS.voltageP) annotation(Line(points = {{-50, 90}, {-50, 90}, {-50, 98}, {-50, 98}, {-50, 100}, {-40, 100}, {-40, 100}}, color = {85, 170, 255}));
  connect(electricalPowerSensorQS.voltageN, starQS.plug_p) annotation(Line(points = {{-40, 80}, {-40, 50}, {-90, 50}}, color = {85, 170, 255}));
  connect(powerSensorQS.power, combiTable1DsQS.u) annotation(Line(points = {{12, 59}, {12, 40}, {38, 40}}, color = {0, 0, 127}));
  connect(swc1.pport, torqueQS.tau) 
    annotation(Line(origin = {70, 39}, 
    points = {{-22.9043, -30.546779}, {34.1904, -30.546779}, {34.1904, 31}, {22, 31}}, 
    color = {0, 0, 127}));
  connect(powerSensorQS.power, swc1.u) 
    annotation(Line(origin = {18, 34}, 
    points = {{-6, 25}, {-6, -25.578069}, {6.1326, -25.578069}}, 
    color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
end IMC;