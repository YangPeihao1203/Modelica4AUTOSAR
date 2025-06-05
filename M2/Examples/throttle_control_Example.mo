within M2.Examples;
package throttle_control_Example

  model ThrottlePedalSystem
    import Modelica.Blocks.Sources.RealExpression;
    import Modelica.Mechanics.Translational.Components.*;
    import Modelica.Mechanics.Translational.Sources.*;

    // 位移控制信号，周期性突变
    RealExpression pedalDisplacement(
      y = if time < 0.05 then 0.0 
          else if time < 1.0 then 0.6 
          else if time < 2.0 then 0.0 
          else if time < 3.0 then 0.6 
          else 0.0);

    // 设定参考位置
    Position prescribedPedalPosition;

    // 踏板机械结构
    Spring pedalSpring(c = 1e3);
    Damper pedalDamper(d = 100);
    Mass pedalMass(m = 0.01);
    Fixed chassisFixed;

  equation
    connect(pedalDisplacement.y, prescribedPedalPosition.s_ref);
    connect(prescribedPedalPosition.flange, pedalSpring.flange_a);
    connect(pedalSpring.flange_b, pedalDamper.flange_a);
    connect(pedalDamper.flange_b, pedalMass.flange_a);
    connect(pedalMass.flange_b, chassisFixed.flange);
  end ThrottlePedalSystem;
  model PedalPositionStep
    import Modelica.Blocks.Sources.Step;

    // 这里用阶跃信号模拟位移变化，范围0~0.6米
    Step stepSignal(
      height=0.6, 
      startTime=0.05);

    // 这里直接用Step输出，单位就是米
    output Real pedalPosition "踏板位移，单位：米";

  equation
    pedalPosition = stepSignal.y;
  end PedalPositionStep;
  model PedalPositionToADCMoke
    import Modelica.Mechanics.Translational.Sources.Position;
    import Modelica.Math;

    Position pedalPosition(
      s = if time < 0.05 then 0.0 
          else if time < 1.0 then 0.6 
          else if time < 2.0 then 0.0 
          else if time < 3.0 then 0.6 
          else 0.0);

    Real adcReal;
    Real adcValue; // 改为Real
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.458,4.01106}, 
extent={{-10,-10},{10,10}})));
    annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Bitmap(origin={0.308187,3.54821}, 
extent={{-98.1157,-104.749},{98.1157,104.749}}, 
fileName="modelica://M2/../../../MODELS论文/补充案例/autosar_composition/图片/youmen.png")}));

  equation
    adcReal = pedalPosition.s * 815 + 170;

    // 直接赋Real值，不转换
    adcValue = floor(adcReal + 0.5);
    y = adcValue;
  end PedalPositionToADCMoke;
  model autosar_system
    .M2.Examples.autosar_compositon.autosar_composition ThrottleComposition(APPSnsr(APP_HwIO_Value(last_sample_time(start=0.05))),Actuator(runnable_Step_sys(HBridgeDriverLookup(extrapolation=Modelica.Blocks.Types.Extrapolation.HoldLastPoint,smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments))),TPS_Secondary(runnable_Step_sys(TPS_Lookup(smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)))) 
      annotation (Placement(transformation(origin={-55.9426,26.9254}, 
extent={{-51.4243,-29.8294},{51.4243,29.8294}})));
    Modelica.Blocks.Math.Gain gain(k=1/2048) 
      annotation (Placement(transformation(origin={24.402,28.6435}, 
  extent={{-10,-10},{10,10}})));
    ThrottleBody throttleBody 
      annotation (Placement(transformation(origin={83.625,27.4991}, 
  extent={{-17.9216,-18.3876},{17.9216,18.3876}})));
    ConvertTPStoADCRange convertTPStoADCRange 
      annotation (Placement(transformation(origin={143.73,27.0086}, 
  extent={{-24.9426,-10.1397},{24.9426,10.1397}})));
    ThrottlePedalMechanical throttlePedalMechanical 
      annotation (Placement(transformation(origin={-257.897,5.74733}, 
  extent={{-24.3169,-21.6325},{24.3169,21.6325}})));
    PedalPositionToADC pedalPositionToADC 
      annotation (Placement(transformation(origin={-173.508,6.67099}, 
  extent={{-29.6017,-18.7588},{29.6017,18.7588}})));
    annotation(experiment(Algorithm=Dassl,InlineIntegrator=false,InlineStepSize=false,NumberOfIntervals=5000,StartTime=0,StopTime=1.5,Tolerance=0.0001),__MWORKS(ContinueSimConfig(SaveContinueFile="false",SaveBeforeStop="false",NumberBeforeStop=1,FixedContinueInterval="false",ContinueIntervalLength=1.5,ContinueTimeVector)));
  equation
    connect(gain.u, ThrottleComposition.ThrCmd_HwIO_Value) 
    annotation(Line(origin={-5,32}, 
  points={{17.402,-3.35649},{5.26544,-3.35649},{5.26544,-3.56576}}, 
  color={0,0,127}));
    connect(gain.y, throttleBody.u) 
    annotation(Line(origin={46.5842,28.1485}, 
  points={{-11.1822,0.495},{15.4395,0.495},{15.4395,0.513393}}, 
  color={0,0,127}));
    connect(throttleBody.y, convertTPStoADCRange.TPS_Sensor_In) 
    annotation(Line(origin={112.584,28.1485}, 
  points={{-9.17357,-0.498726},{1.27553,-0.498726},{1.27553,-0.492011}}, 
  color={0,0,127}));
    connect(convertTPStoADCRange.TPS2_ADC, ThrottleComposition.TPS2_HwIO_Value) 
    annotation(Line(origin={10,43}, 
  points={{161.103,-10.6966},{165.664,-10.6966},{165.664,34.872},{-136.64,34.872},{-136.64,3.31765},{-112.995,3.31765}}, 
  color={0,0,127}));
    connect(convertTPStoADCRange.TPS1_ADC1, ThrottleComposition.TPS1_HwIO_Value) 
    annotation(Line(origin={9,29}, 
  points={{162.283,-5.55395},{174.19,-5.55395},{174.19,68.9811},{-146.491,68.9811},{-146.491,-2.64482},{-112.48,-2.64482}}, 
  color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
    connect(throttlePedalMechanical.y, pedalPositionToADC.pedalPosition) 
    annotation(Line(origin={-208,6}, 
  points={{-23.0616,0.134467},{11.2042,0.134467},{11.2042,-0.30074}}, 
  color={0,0,127}));
    connect(pedalPositionToADC.ADCSignal, ThrottleComposition.APP_HwIO_Value) 
    annotation(Line(origin={-121,6}, 
  points={{-16.4782,-0.129851},{17.7977,-0.129851},{17.7977,0.994123}}, 
  color={0,0,127}));
    end autosar_system;
  model ThrottleBody "节气门体模型，带输出锁定机制"
    import Modelica.Blocks.Interfaces.RealInput;
    import Modelica.Blocks.Interfaces.RealOutput;
    import Modelica.Blocks.Continuous.SecondOrder;
    import Modelica.Blocks.Nonlinear.Limiter;



    // 参数设置 (可调整)
    parameter Real w(unit="rad/s") = 30 "自然频率";
    parameter Real zeta = 0.3 "阻尼比";
    parameter Real tol = 1e-5 "锁定检测容差";

    // 内部组件
    SecondOrder tf(
      w = w, 
      D = zeta, 
      initType = Modelica.Blocks.Types.Init.InitialState) 
      "二阶系统模型";

    Limiter limiter(uMax = 1.0, uMin = -Modelica.Constants.inf) 
      "输出限幅器 (上限=1.0)";

    // 内部状态变量
    Real y_temp "限幅器输出";
    discrete Boolean latched(start = false) "锁定状态标志";
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-120.532,6.32379}, 
extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.401,0.819431}, 
extent={{-10,-10},{10,10}})));
    annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Bitmap(origin={0.139635,-2.23441}, 
extent={{-100.13,-98.0353},{100.13,98.0353}}, 
fileName="modelica://M2/../../../MODELS论文/补充案例/autosar_composition/图片/qimen.png")}));

  equation
    // 系统连接
    u = tf.u;               // 输入连接
    tf.y = limiter.u;       // 传递函数 -> 限幅器
    y_temp = limiter.y;     // 获取限幅后值

    // 锁定检测逻辑：当输出接近1.0时触发锁定
    when y_temp >= 1.0 - tol then
      latched = true;       // 永久锁定状态
    end when;

    // 输出选择：锁定状态时输出1.0，否则输出动态值
    y = if latched then 1.0 else y_temp;


  end ThrottleBody;
  model ThrottleBodyTest
    import Modelica.Blocks.Sources.TimeTable;
    import Modelica.Blocks.Interfaces.RealOutput;

    // 输入信号源 - 模拟第二张图中的蓝色数据
    TimeTable inputSignal(
      table = [0.0,  0.00;
               0.29, 0.00;
               0.30, 0.60;
               0.59, 0.60;
               0.60, -0.30;
               0.89, -0.30;
               0.90, 0.50;
               1.19, 0.50;
               1.20, -0.40;
               1.49, -0.40;
               1.50, 0.70;
               1.79, 0.70;
               1.80, -0.20;
               2.00, -0.20], 
      timeScale = 1.0
    ) "Input signal (blue line from the second image)";

    // 封装的ThrottleBody模块
    ThrottleBody throttleBody(
      w = 25,     // 稍微提高响应速度
      zeta = 0.25 // 减少阻尼以产生更多振荡
    );

    // 输出接口
    RealOutput throttlePosition "Output throttle position";

  equation
    connect(inputSignal.y, throttleBody.u);
    connect(throttleBody.y, throttlePosition);

    annotation (
      experiment(
        StartTime=0, 
        StopTime=2, 
        Tolerance=1e-6, 
        Interval=0.01
      ), 
      Documentation(info="<html>
    <p>Test model for ThrottleBody with input matching the blue curve from the second image.</p>
    <p>Simulate from 0 to 2 seconds to compare output with the orange curve.</p>
    </html>"    ));
  end ThrottleBodyTest;
  model ConvertTPStoADCRange
    Modelica.Blocks.Interfaces.RealInput TPS_Sensor_In 
      annotation (Placement(transformation(origin={-119.756,6.39016}, 
extent={{-20,-20},{20,20}})));
    parameter Real angle_open=85;
     parameter Real angle_init=15;
    Modelica.Blocks.Math.Add add(k2=-1) 
      annotation (Placement(transformation(origin={-35.379,-48.1845}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Sources.Constant const(k=1023*angle_open/90) 
      annotation (Placement(transformation(origin={-81.5897,-36.277}, 
extent={{-13.2272,-13.2272},{13.2272,13.2272}})));
    Modelica.Blocks.Sources.Constant const1(k=1023*angle_init/90) 
      annotation (Placement(transformation(origin={-83.261,-86.0065}, 
extent={{-12.0633,-12.0633},{12.0633,12.0633}})));
    Modelica.Blocks.Sources.Constant const2(k=1023*angle_init/90) 
      annotation (Placement(transformation(origin={27.5492,-74.6471}, 
extent={{-12.5289,-12.5289},{12.5289,12.5289}})));
    Modelica.Blocks.Sources.Constant const3(k=1023*angle_init/90) 
      annotation (Placement(transformation(origin={-81.5937,86.4041}, 
extent={{-11.1323,-11.1323},{11.1323,11.1323}})));
    Modelica.Blocks.Sources.Constant const4(k=1023*angle_open/90) 
      annotation (Placement(transformation(origin={-82.57,50.9801}, 
extent={{-9.96846,-9.96846},{9.96846,9.96846}})));
    Modelica.Blocks.Sources.Constant const5(k=1023*angle_open/90) 
      annotation (Placement(transformation(origin={20.5065,93.1879}, 
extent={{-12.7616,-12.7616},{12.7616,12.7616}})));
    Modelica.Blocks.Math.Add add1(k2=-1) 
      annotation (Placement(transformation(origin={-37.7783,59.3509}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Math.Add add2 
      annotation (Placement(transformation(origin={69.9733,-35.49}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Math.Add add3 
      annotation (Placement(transformation(origin={67.6342,51.3511}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealOutput TPS1_ADC1 
      annotation (Placement(transformation(origin={110.465,-35.1345}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealOutput TPS2_ADC 
      annotation (Placement(transformation(origin={109.744,52.2193}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Math.Product product1 
      annotation (Placement(transformation(origin={10.4332,27.1356}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Math.Product product2 
      annotation (Placement(transformation(origin={10.3371,-15.0285}, 
extent={{-10,-10},{10,10}})));
    annotation(Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2})));
  equation
    connect(const.y, add.u1) 
    annotation(Line(origin={-44.28,-43.9619}, 
points={{-22.7598,7.68494},{-3.09901,7.68494},{-3.09901,1.7774}}, 
color={0,0,127}));
    connect(const1.y, add.u2) 
    annotation(Line(origin={-44.28,-76.9619}, 
points={{-25.7113,-9.04459},{-3.09901,-9.04459},{-3.09901,22.7774}}, 
color={0,0,127}));
    connect(add.y, product2.u2) 
    annotation(Line(origin={-47.1807,-248.796}, 
points={{22.8017,200.611},{45.5178,200.611},{45.5178,227.767}}, 
color={0,0,127}));
    connect(const2.y, add2.u2) 
    annotation(Line(origin={33.8193,-238.796}, 
points={{7.5117,164.149},{24.154,164.149},{24.154,197.306}}, 
color={0,0,127}));
    connect(product1.u2, TPS_Sensor_In) 
    annotation(Line(origin={-108,-24}, 
points={{106.433,45.1356},{92.9328,45.1356},{92.9328,30.39016},{-11.756,30.39016}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
    connect(const3.y, add1.u1) 
    annotation(Line(origin={-106.387,8.6948}, 
points={{37.0388,77.7093},{56.6087,77.7093},{56.6087,56.6561}}, 
color={0,0,127}));
    connect(const4.y, add1.u2) 
    annotation(Line(origin={-106.387,-25.3052}, 
points={{34.7823,76.2853},{56.6087,76.2853},{56.6087,78.6561}}, 
color={0,0,127}));
    connect(product1.y, add3.u2) 
    annotation(Line(origin={50.1649,39.9569}, 
points={{-28.7317,-12.8213},{5.46928,-12.8213},{5.46928,5.39415}}, 
color={0,0,127}));
    connect(add3.y, TPS2_ADC) 
    annotation(Line(origin={126.165,5.95694}, 
points={{-47.5308,45.3941},{-16.421,45.3941},{-16.421,46.2624}}, 
color={0,0,127}));
    connect(add2.y, TPS1_ADC1) 
    annotation(Line(origin={85.1715,-222.242}, 
points={{-4.1982,186.752},{25.2935,186.752},{25.2935,187.1075}}, 
color={0,0,127}));
    connect(TPS_Sensor_In, product2.u1) 
    annotation(Line(origin={-130,-84}, 
points={{10.244,90.39016},{114.265,90.39016},{114.265,74.9715},{128.337,74.9715}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
    connect(product2.y, add2.u1) 
    annotation(Line(origin={18,-183}, 
points={{3.33708,167.971},{39.9733,167.971},{39.9733,153.51}}, 
color={0,0,127}));
    connect(add1.y, product1.u1) 
    annotation(Line(origin={-21,40}, 
points={{-5.77827,19.3509},{19.4332,19.3509},{19.4332,-6.86438}}, 
color={0,0,127}));
    connect(add3.u1, const5.y) 
    annotation(Line(origin={49,32}, 
points={{6.63418,25.3511},{-14.4557,25.3511},{-14.4557,61.1879}}, 
color={0,0,127}));
    end ConvertTPStoADCRange;
  model ThrottlePedalMechanical
    import Modelica.Mechanics.Translational.Components.*;
    import Modelica.Mechanics.Translational.Sources.*;
    import Modelica.Blocks.Sources.*;






    // 外部周期脉冲力（代表驾驶员脚力）
    Modelica.Blocks.Sources.RealExpression footForceSignal(
      y = if time < 0.05 then 0 
          else if mod(time, 2.0) < 1.0 then 60.0 
          else 0.0
    ) 
      annotation (Placement(transformation(origin={-242.323,-0.839945}, 
extent={{-14.0604,-10.8459},{14.0604,10.8459}})));
    // 驾驶员脚力施加器
    Modelica.Mechanics.Translational.Sources.Force driverFootForce 
      annotation (Placement(transformation(origin={-179.587,-0.546549}, 
extent={{-13.0453,-13.0453},{13.0453,13.0453}})));
    // 踏板质量
    Modelica.Mechanics.Translational.Components.Mass pedalMass(m = 0.01) 
      annotation (Placement(transformation(origin={-130.655,0.667952}, 
extent={{-16.2598,-16.2598},{16.2598,16.2598}})));
    Modelica.Mechanics.Translational.Components.Spring pedalSpring(c = 400)  // 弹簧刚度 400 N/m 
      annotation (Placement(transformation(origin={-16.9705,-35.806}, 
extent={{-10,-10},{10,10}})));
    Modelica.Mechanics.Translational.Components.Damper pedalDamper(d = 10)   // 阻尼系数 10 N·s/m 
      annotation (Placement(transformation(origin={-13.2128,25.6136}, 
extent={{-11.861,-11.861},{11.861,11.861}})));

    Modelica.Mechanics.Translational.Components.Fixed fixedChassis 
      annotation (Placement(transformation(origin={77.1607,3.32033}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.359,1.78962}, 
  extent={{-10,-10},{10,10}})));
      annotation (Placement(transformation(origin = {22.8495, -39.3311}, extent = {{-10, -10}, {10, 10}})),Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2}),graphics = {Bitmap(origin={0.894824,3.13183}, 
extent={{-97.5338,-98.5777},{97.5338,98.5777}}, 
fileName="modelica://M2/../../../MODELS论文/补充案例/autosar_composition/图片/youmen.png")}));

  equation



    // 连接驱动力→质量→弹簧阻尼→固定端

    // 外部信号控制力
    connect(footForceSignal.y, driverFootForce.f) 
    annotation(Line(origin={-207.432,-2.43807}, 
points={{-19.425,1.59812},{12.1903,1.59812},{12.1903,1.89152}}, 
color={0,0,127}));
    connect(driverFootForce.flange, pedalMass.flange_a) 
    annotation(Line(origin={-144.432,-3.43807}, 
points={{-22.11,2.89152},{-2.4823,2.89152},{-2.4823,4.10602}}, 
color={0,127,0}));
    connect(pedalMass.flange_b, pedalSpring.flange_a) 
    annotation(Line(origin={-76.432,-3.43807}, 
points={{-37.9627,4.10602},{-20.4823,4.10602},{-20.4823,-32.36793},{49.4615,-32.36793}}, 
color={0,127,0}));
    connect(pedalMass.flange_b, pedalDamper.flange_a) 
    annotation(Line(origin={-42.432,-4.43807}, 
points={{-71.9627,5.10602},{-54.0823,5.10602},{-54.0823,30.0516},{17.3582,30.0516}}, 
color={0,127,0}));
    connect(pedalSpring.flange_b, fixedChassis.flange) 
    annotation(Line(origin={12.568,-2.43807}, 
points={{-19.5385,-33.36793},{64.5927,-33.36793},{64.5927,5.7584}}, 
color={0,127,0}));
    connect(pedalDamper.flange_b, fixedChassis.flange) 
    annotation(Line(origin={2.56798,16.5619}, 
points={{-3.9197,9.05163},{74.5927,9.05163},{74.5927,-13.2416}}, 
color={0,127,0}));

    // 输出位移为 pedalMass.s，范围约 0~0.15m，受输入力大小控制
    connect (pedalMass.s,y);

  end ThrottlePedalMechanical;
  model PedalPositionToADC


    parameter Real in_min = 0 "输入最小值（米）";
    parameter Real in_max = 0.15 "输入最大值（米）";
    parameter Real out_min = 170 "输出最小值";
    parameter Real out_max = 660 "输出最大值";
    Modelica.Blocks.Interfaces.RealInput pedalPosition "踏板位移，单位米" 
      annotation (Placement(transformation(origin={-120.202,-6.86017}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput ADCSignal "转换后的AUTOSAR信号" 
      annotation (Placement(transformation(origin={110.36,-6.86015}, 
  extent={{-10,-10},{10,10}})));
    annotation(Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
  grid={2,2})));

  equation
    // 线性映射公式
    ADCSignal = out_min + (pedalPosition - in_min) * (out_max - out_min) / (in_max - in_min);



  end PedalPositionToADC;
  end throttle_control_Example;