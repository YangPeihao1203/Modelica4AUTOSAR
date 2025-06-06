# Example Models Overview

This document provides detailed descriptions and key information for the 10 example models included in the `Examples` folder.

## Simulink Comparable Cases (3)


### 仿真时间比较
比较三个案例中Modelica第一次仿真、第二次仿真与Simulink的仿真时间比较。这里放一个表格。列分别是 Modelica仿真第1、2次（最左端合并一个单元格，并再分开为第一次、第二次）仿真，simulink仿真时间；行分别是如下三个案例。中间填充仿真时间。


！注意，由于Simulink中的元件和Modelica并不完全一致，所以不可能对标展示的完全一样。比如Simulink中有From/GOTO模块，而Modelica没有，需要显性的连接。然而，都是实际上等价的，并不会影响实际的结果。 另外，系统级别的连接端口名称不一定非得等于子系统中对应的端口名称，即a.u1可以等于a.b.u，只要保证对应的端口连接对即可。

### 1. Swc_Expfcns_Example
- **Description**: 论文中提供的和Simulink直接做对比的例子。The AUTOSAR application layer model’s SWC comprises
three RPorts: RPort E, RPort 1, and RPort 2. RPort E is used
for error state validation, set to 0 to indicate no errors. RPort 1
handles gain control, applying an additive gain (rather than
multiplicative) with a 1-second sampling period. The gain is
applied to the control output PPort 4 every 1-second cycle,
with the gain set to 0 in this model, meaning no additional
gain is applied. RPort 2 represents an attenuation factor with
a 10-second sampling period. It adjusts PPort 4’s output
by reducing the previous cycle’s value and thus maintains
smoother output. In this model, the attenuation factor is set
to 0, resulting in no attenuation.
The system also includes four PPorts: PPort 1, PPort 2,
PPort 3, and PPort 4. PPort 1 and PPort 3 output periodic
signals at 1-second intervals (alternating between -1 and 1),
with a 1-second delay. PPort 2 outputs periodic signals at 10-
second intervals (alternating between -1 and 1), also with a 1-
second delay. The output of PPort 4 is determined by specific。internal behaviors, which dictate the signal value based on the
Modelica model’s operations.
The system includes three Runnables:
• The first and second runnables, connected to RPort 1 and
RPort E, have 1-second sample times.
• The third runnable entity, connected to RPort 2, has a
sample time of 10 seconds.
• The entities communicate through IRV.


- **Performance**: Modelica 第一次simulation ~5.9494s, 只改变参数第二次仿真0.0013s,simulink 0.4157s
- **Location**: `M2/Examples/Swc_Expfcns`
- **simulink 官方案例地址** : https://ww2.mathworks.cn/help/autosar/ug/example-model-autosar-runnables-exported.html

- ** Modelica** 图片内容与仿真结果
模型结构:![](images/ModelicaFrame.png)
仿真结果:![](images/ModelicaResult.png)]

- ** Simulink ** 仿真
模型结构 ![](images/Simulink.png)
仿真结果 ![](images/SimulinkResult.png)



### 2. Automotive Throttle Control System(AUTOSAR )
- **Description**:  The autosar_composition module implements a simulation-ready model of an AUTOSAR-based Automotive Throttle Control System. This model reflects the logical architecture of an ECU system, composed of multiple Software Components (SWCs), ports, and internal runnables. The simulation is designed to emulate key control and signal processing behaviors within a modular and extensible framework.
本模型基于 Modelica 语言构建，参考了 AUTOSAR 架构思想，通过组件化方式对汽车电子油门控制系统（Throttle-by-Wire）进行了建模与仿真。模型名称为 autosar_composition，它由多个 AUTOSAR SW-C（Software Component） 实体组成，每个实体实现特定的功能逻辑，并通过显式连接进行信号交互，体现了典型的组件耦合和信号流向。

模型结构与功能模块
该组合模型主要包含以下子组件：

TPS_Secondary 与 TPS_Primary：两个油门位置传感器（Throttle Position Sensor），分别接收原始硬件输入值并输出标准化的百分比值。

Monitor：安全监测器模块，对两个 TPS 值进行监控和验证。

APPSnsr：加速踏板传感器（Accelerator Pedal Position Sensor），将踏板输入转换为百分比信号。

Controller：主控制器，接收加速踏板信号及监控模块输出的 TPS 值，生成控制命令。

Actuator：执行器组件，将控制器输出的油门命令转换为硬件控制值，用于驱动电子节气门。

ThrCmd_HwIO_Value：系统输出接口，表示发送给底层硬件执行机构的最终控制信号。

输入与输出接口
输入接口：

TPS1_HwIO_Value: 主 TPS 硬件信号

TPS2_HwIO_Value: 备 TPS 硬件信号

APP_HwIO_Value: 加速踏板硬件信号

输出接口：

ThrCmd_HwIO_Value: 最终节气门硬件控制输出

- **Performance**:  Modelica 第一次simulation ~7.2132s, 只改变参数第二次仿真0.057s,simulink 1.4702s
- **Location**: `M2/Examples/autoar_composition`
- **simulink 官方案例地址** : https://ww2.mathworks.cn/help/autosar/ug/example-modeling-patterns-for-autosar-runnables.html

- ** Modelica** 图片内容与仿真结果
模型结构:![](images/autosar_composition.png)
仿真结果:![](images/result1.png)]

- ** Simulink ** 仿真
模型结构 ![](images/autosar_composition_simulink.png)
仿真结果 ![](images/simulink_autosar_pedal.png)




### 3. [Case Name]



## Multi-domain Demonstration Cases (7)

1. 踏板系统
Complex throttle control system with 179 variables and 451 parameters.

### 1. Electric Motor Control System
- **Description**: Integration of AUTOSAR logic with electrical motor domain.
- **Highlights**: Demonstrates electrical-mechanical co-simulation.
- **Location**: `Examples/ElectricMotorControl.mo`

### 2. Mechanical Suspension System
- **Description**: Combines mechanical suspension dynamics with AUTOSAR control logic.
- **Location**: `Examples/SuspensionSystem.mo`



## About the Library Scope and Community Contribution

The AUTOSAR standard is extensive and continuously evolving. This library does **not** aim to cover the entirety of the AUTOSAR specification. Instead, it provides a **modular, fully extensible, and customizable** framework designed to be a foundation for further development.

✨ We warmly welcome developers, researchers, and practitioners from the AUTOSAR and Modelica communities to contribute, extend, and improve this library.  
Together, we can accelerate the growth of open-source tools supporting AUTOSAR, fostering innovation and collaboration across automotive and multi-domain system modeling.

If you are interested in contributing, please refer to the repository’s contribution guidelines or open an issue to start a discussion.  
Let’s build a vibrant ecosystem for open, flexible, and high-quality AUTOSAR modeling!
