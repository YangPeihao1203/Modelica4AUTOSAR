within M2;
package Utilities

  model comparator
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin = {-120, 68}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin = {-120, -58}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.BooleanOutput y 
      annotation (Placement(transformation(origin = {110, 10}, 
        extent = {{-10, -10}, {10, 10}})));
    annotation (Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
      grid = {2, 2}), graphics = {Rectangle(origin = {0, 0}, 
      fillColor = {255, 255, 255}, 
      fillPattern = FillPattern.Solid, 
      extent = {{-100, 100}, {100, -100}}), Text(origin = {-4, 10}, 
      lineColor = {0, 0, 0}, 
      extent = {{-55, 32}, {55, -32}}, 
      textString = "==", 
      textStyle = {TextStyle.None}, 
      textColor = {0, 0, 0}, 
      horizontalAlignment = LinePattern.None)}));
  algorithm
    y := u == u1;
  end comparator;

  model DiscreteTimeIntegrator
    import Modelica.Blocks.Types.Init;
    parameter Real k(unit = "1") = 1 "Integrator gain";
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin = {-120, 8.000000000000002}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin = {110, 8.000000000000002}, 
        extent = {{-10, -10}, {10, 10}})));
    annotation (Line(origin = {-121, 20}, 
      points = {{-39, 0}, {39, 0}}, 
      color = {0, 0, 127}));
    Real temp "涓存椂绉垎鍊�";
    parameter Real init_val = 0 "绉垎鍒濆€�";
    parameter Real sample_time = 1 "閲囨牱鏃堕棿";
    Real last_sample_time(start = 0);
  initial equation
    temp = init_val;
  equation
    der(temp) = k * u;
  algorithm
    when time - last_sample_time >= sample_time then
      y := temp;
      last_sample_time := time;
    end when;
  end DiscreteTimeIntegrator;
  package MultiInterger
    type Interger01 = Integer(min = 0, max = 1) 
      annotation (Protection(access = Access.diagram));


    type Interger0Unbound = Integer(min = 0) 
      annotation (Protection(access = Access.diagram));



    type Interger1Unbound = Integer(min = 1) 
      annotation (Protection(access = Access.diagram));
    annotation (Protection(access = Access.diagram));
  end MultiInterger;



  model DataStoreMemory
    annotation (Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, 
      grid = {2.0, 2.0}), graphics = {Rectangle(origin = {0.0, 7.0}, 
      fillColor = {255, 255, 255}, 
      fillPattern = FillPattern.Solid, 
      extent = {{-100.0, 53.0}, {100.0, -53.0}}), Text(origin = {4.0, 9.0}, 
      lineColor = {0, 0, 0}, 
      extent = {{-70.0, 37.0}, {70.0, -37.0}}, 
      textString = "DataStoreMemory", 
      textStyle = {TextStyle.None}, 
      textColor = {0, 0, 0}, 
      horizontalAlignment = LinePattern.None)}));
    parameter Real initVal = 0;
    Real globalVar;
  equation
    globalVar = initVal;
  end DataStoreMemory;
  model DataTypeConversion
    import Modelica.Blocks.Interfaces.*;
    import Modelica.SIunits;

    // 支持的转换类型
    type ConversionMode = enumeration(RealToInt, IntToReal, BoolToInt, IntToBool);

    parameter ConversionMode conversionMode = ConversionMode.RealToInt "Select conversion mode";
    parameter Real scaleFactor = 1.0 "Scaling factor for simulating fixed-point conversion";
  protected
    Integer intTemp;
    Boolean boolTemp;
  public
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin = {-115.34375000000006, -9.000000000000012}, 
        extent = {{-15.343749999999972, -15.343749999999998}, {15.343750000000043, 15.343749999999996}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin = {113.00000000000001, -9.000000000000014}, 
        extent = {{-12.999999999999986, -12.999999999999986}, {12.999999999999986, 12.999999999999986}})));
  equation
    // 根据转换模式处理
    if conversionMode == ConversionMode.RealToInt then
      boolTemp = false;
      intTemp = integer(u / scaleFactor);
      y = intTemp; // 返回整数值的 real 表示
    elseif conversionMode == ConversionMode.IntToReal then
      boolTemp = false;
      intTemp = integer(u);
      y = intTemp * scaleFactor;
    elseif conversionMode == ConversionMode.BoolToInt then
      intTemp = 0;
      boolTemp = u > 0.5;
      y = if boolTemp then 1 else 0;
    elseif conversionMode == ConversionMode.IntToBool then
      intTemp = 0;
      boolTemp = integer(u) <> 0;
      y = if boolTemp then 1 else 0;
    end if;
  end DataTypeConversion;
  model PID_Clamped "PID with clamping anti-windup"
    import Modelica.Blocks.Types.Init;

    parameter Real k = 1 "Controller gain";
    parameter Real Ti = 0.5 "Integral time constant";
    parameter Real Td = 0.1 "Derivative time constant";
    parameter Real Nd = 10 "Derivative filter coefficient";
    parameter Real yMax = 100 "Max output";
    parameter Real yMin = -100 "Min output";

    parameter Init initType = Init.InitialState;



    // Sub-components
    Modelica.Blocks.Math.Gain P(k=1) "Proportional term";
    Modelica.Blocks.Continuous.Derivative D(
      k=Td, 
      T=Td/Nd, 
      initType=initType
    ) "Derivative term";

    // Internal integrator with external reset and enable for clamping
    Modelica.Blocks.Continuous.Integrator I(
      k=1/Ti, 
      initType=initType
    ) "Integral term";

    Modelica.Blocks.Math.Add3 sum;
    Modelica.Blocks.Math.Gain gain(k=k);
    Modelica.Blocks.Nonlinear.Limiter limiter(uMax=yMax, uMin=yMin);

  protected
    Boolean integratorEnable(start=true);
  public
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-224.605,25.1243}, 
extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={20.5838,28.7568}, 
extent={{-10,-10},{10,10}})));
  equation
    // PID path
    connect(u, P.u);
    connect(u, I.u);
    connect(u, D.u);

    connect(P.y, sum.u1);
    connect(I.y, sum.u2);
    connect(D.y, sum.u3);
    connect(sum.y, gain.u);
    connect(gain.y, limiter.u);
    connect(limiter.y, y);

    // Anti-windup clamping logic
    when {y >= yMax and u > 0, y <= yMin and u < 0} then
      integratorEnable = false; // 禁止积分器积分
    elsewhen not (y >= yMax and u > 0) and not (y <= yMin and u < 0) then
      integratorEnable = true; // 启用积分器
    end when;

    // 条件积分：仅当 integratorEnable = true 时更新状态
    I.u = if integratorEnable then u else 0;

    annotation (Icon(graphics={
        Text(extent={{-100,80},{100,100}}, textString="Clamped PID")
      }));
  end PID_Clamped;
end Utilities;