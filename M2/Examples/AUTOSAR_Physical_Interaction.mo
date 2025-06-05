model AUTOSAR_Physical_Interaction
  // 引入你的autosar_swc模型
  M2.Examples.autosar_swc_Example.autosar_swc swc;

  // 物理系统
  M2.Examples.PhysicalSystem phys;

equation
  // 物理系统输出的状态反馈给swc输入u,u1
  connect(phys.position, swc.u);
  connect(phys.velocity, swc.u1);

  // swc输出控制信号驱动物理系统
  connect(swc.pport, phys.controlForce1);
  connect(swc.pport1, phys.controlForce2);
end AUTOSAR_Physical_Interaction;