model PhysicalSystem
  // 物理信号接口，控制力由autosar_swc的pport, pport1传入
  Modelica.Blocks.Interfaces.RealInput controlForce1 "控制力1";
  Modelica.Blocks.Interfaces.RealInput controlForce2 "控制力2";

  // 输出物理量反馈给软件组件（位移、速度）
  Modelica.Blocks.Interfaces.RealOutput position;
  Modelica.Blocks.Interfaces.RealOutput velocity;

  // 状态变量
  Real x(start=0) "位置";
  Real v(start=0) "速度";

  // 物理参数
  parameter Real m = 1 "质量(kg)";
  parameter Real c = 0.5 "阻尼系数(Ns/m)";
  parameter Real k = 5 "弹簧刚度(N/m)";

equation
  // 运动微分方程：m*der(v) = F - c*v - k*x
  der(x) = v;
  der(v) = (controlForce1 + controlForce2 - c*v - k*x)/m;

  // 输出信号
  position = x;
  velocity = v;
end PhysicalSystem;