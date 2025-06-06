# Example Models Overview

This document provides detailed descriptions and key information for the 10 example models included in the `Examples` folder.

---

> 📘 **Application Note**  
> The [Automotive Throttle Control System](#2-automotive-throttle-control-system) is the **largest-scale example**, featuring **179 variables** and **451 parameters**.  
> It fully demonstrates hierarchical conversion and advanced signal handling across subsystems.


## Simulation Time Comparison

Below is a comparison table showing the simulation times for the three example cases in Modelica (1st and 2nd simulations) and Simulink.  

> ⚠️ **Note**  
> Some Simulink blocks (e.g., `From` / `Goto`) do not have direct counterparts in Modelica.  
> However, the functional behavior remains equivalent, and the simulation results are consistent.  
> Also, system-level port names do not need to exactly match subcomponent port names — e.g., `a.u1` can correspond to `a.b.u`.


| Example Case                | Modelica Simulation Time (1st) | Modelica Simulation Time (2nd and more) | Simulink Simulation Time |
|----------------------------|-------------------------------|-------------------------------|--------------------------|
| Swc_Expfcns_Example        | 5.9494 s                      | 0.0013 s                      | 0.4157 s                 |
| Automotive Throttle Control | 7.2132 s                      | 0.057 s                       | 1.4702 s                 |
| autosar_swc_Example         | 4.2066 s                      | 0.0010 s                      | 0.6646 s                 |

---

## Simulink Comparable Cases (3)

### 1. Swc_Expfcns_Example
- **Description**:  
  This example, directly comparable to the Simulink official example, models an AUTOSAR application layer software component (SWC) with three RPorts: RPort E (error validation, set to 0 meaning no errors), RPort 1 (gain control with a 1-second sampling period, gain set to 0), and RPort 2 (attenuation factor with a 10-second sampling period, set to 0). The SWC has four PPorts outputting periodic signals at different intervals. The system includes three runnables with sample times of 1 and 10 seconds communicating via Inter-Runnable Variables (IRV).

- **Performance**:  
  Modelica first simulation: ~5.9494s  
  Modelica parameter-only re-simulation: ~0.0013s  
  Simulink simulation: ~0.4157s

- **Location**: `M2/Examples/Swc_Expfcns`  
- **Simulink Official Example**: [Link](https://ww2.mathworks.cn/help/autosar/ug/example-model-autosar-runnables-exported.html)

- **Modelica**  
  Model structure:  
  ![](images/ModelicaFrame.png)  
  Simulation results:  
  ![](images/ModelicaResult.png)

- **Simulink**  
  Model structure:  
  ![](images/Simulink.png)  
  Simulation results:  
  ![](images/SimulinkResult.png)

---

### 2. Automotive Throttle Control System (AUTOSAR)
- **Description**:  
  The `autosar_composition` module models an AUTOSAR-based Automotive Throttle Control System (Throttle-by-Wire) following AUTOSAR architecture principles. It consists of multiple software components (SWCs) such as:

  - TPS_Secondary and TPS_Primary: Two throttle position sensors that normalize hardware inputs.  
  - Monitor: Safety monitoring module for TPS values.  
  - APPSnsr: Accelerator pedal position sensor converting pedal input to a percentage.  
  - Controller: Main controller generating throttle commands based on sensor inputs.  
  - Actuator: Converts commands into hardware control signals.  
  - ThrCmd_HwIO_Value: Output interface representing the final throttle hardware signal.

- **Performance**:  
  Modelica first simulation: ~7.2132s  
  Modelica parameter-only re-simulation: ~0.057s  
  Simulink simulation: ~1.4702s

- **Location**: `M2/Examples/autoar_composition`  
- **Simulink Official Example**: [Link](https://ww2.mathworks.cn/help/autosar/ug/example-modeling-patterns-for-autosar-runnables.html)

- **Modelica**  
  Model structure:  
  ![](images/autosar_composition.png)  
  Simulation results:  
  ![](images/result1.png)

- **Simulink**  
  Model structure:  
  ![](images/autosar_composition_simulink.png)  
  Simulation results:  
  ![](images/simulink_autosar_pedal.png)

---

### 3. autosar_swc_Example
- **Description**:  
  Demonstrates an AUTOSAR atomic software component (ASWC) with two periodic runnables (`Runnable_1s` and `Runnable_2s`) running at 1-second and 2-second intervals, respectively. The model supports multitasking for efficient execution. It includes an initialization function that sets an integrator initial value.

- **Performance**:  
  Modelica first simulation: ~4.2066s  
  Modelica parameter-only re-simulation: ~0.0010s  
  Simulink simulation: ~0.6646s

- **Location**: `M2/Examples/autosar_swc_Example`  
- **Simulink Official Example**: [Link](https://ww2.mathworks.cn/help/autosar/ug/example-modeling-patterns-for-autosar-runnables.html)

- **Modelica**  
  Model structure:  
  ![](images/Modelia_autosar_swc.png)  
  Simulation results:  
  ![](images/modelica_autosar_swc_result.png)

- **Simulink**  
  Model structure:  
  ![](images/simulink_autosar_swc.png)  
  Simulation results:  
  ![](images/simulink_autosar_swc_result.png)

---

## Multi-domain Demonstration Cases (7)

### 1. Multi-Domain Modeling of Swc_Expfcns and Headlamp

- **Description**:  
all three RPort inputs are set to 0.
PPort 1 and PPort 3 are connected to the switch states of
”headlamp left” and ”headlamp right”, respectively, indicating whether the headlights are on or off. PPort 4 represents
the applied voltage and is linked to both ”headlamp left” and
”headlamp right” to simulate the electrical behavior of the
lighting system. The HeadLamp model, shown in Listing 1,
has two input ports: switch, which controls the on/off state, and
voltageInput, which represents the applied voltage. The model
computes the voltage based on the switch state, then applies
Ohm’s law to determine the current. The power is calculated
as the product of voltage and current, and the brightness is
derived by normalizing the power against its maximum value,
ensuring it remains within [0,1].



- **Location**: `M2/Examples/AUTOSAR_HeadLamp`  

- **Modelica**  
  Model structure:  
  ![](images/headlamp_system.png)  
  Simulation results:  
  ![](images/headlamp_system_result.png)



### 2. Automotive Throttle Control System

- **Description**:  
（加个符号）Complex throttle control system with 179 variables and 451 parameters. ChatGPT 说：

该 Modelica 模型 autosar_system 是一个基于 AUTOSAR 架构思想构建的电子油门系统仿真平台，用于模拟从驾驶员踩下油门踏板到节气门开度响应的整个电子控制过程。模型整合了多个功能模块，涵盖了踏板的机械响应、信号的采集与转换、ECU 内部的信号处理逻辑，以及最终控制节气门执行器的动作，完整还原了电子油门系统的工作流程。

系统的物理起点是 ThrottlePedalMechanical 模块。该模块通过一个周期性的力信号 footForceSignal 来模拟驾驶员脚踩油门踏板的行为，其内部包含弹簧、阻尼器和质量块等力学结构，用于逼真模拟踏板在外力作用下的动态位移响应。输出结果为踏板的实际机械位移，反映驾驶员的踩踏深度。

该位移信号随后传入 PedalPositionToADC 模块，将模拟的机械位移转换为模拟电压信号，模拟实际车辆中 ADC（模数转换器）采集踏板信号的过程。转换后的信号通过接口 APP_HwIO_Value 输入到 AUTOSAR 软件组件组合体 autosar_composition 中，由其中的 APP_Snsr 组件进行进一步处理，生成节气门开度控制命令 ThrCmd_HwIO_Value。该控制命令再经过一个归一化增益模块（增益为 1/2048），传递给 ThrottleBody 模块，驱动节气门执行器动作，实现节气门的开度调节。

节气门的实际开度作为物理反馈信号，被送入 ConvertTPStoADCRange 模块，该模块将该信号转换为两个 ADC 输出（TPS1 和 TPS2），模拟双冗余的节气门位置传感器。转换后的信号分别传入 autosar_composition 中的 TPS_Primary 和 TPS_Secondary 两个软件组件，模拟 ECU 对节气门位置的实时采集，从而构成一个完整的闭环控制系统。

autosar_composition 是系统的核心控制模块，内部集成了油门踏板传感器单元 APP_Snsr、节气门执行器控制单元 Actuator 以及两个节气门位置反馈单元 TPS_Primary 和 TPS_Secondary。这些组件通过标准信号端口连接，遵循典型的 AUTOSAR 软件组件通信模式，每个组件内部均封装了其特定的功能逻辑，如查找表、控制算法等，用于模拟实际嵌入式软件的行为。

整个模型采用物理建模与控制建模解耦的设计理念：一方面通过力学结构准确描述踏板和节气门的动态响应过程，另一方面通过 AUTOSAR 软件组件模块化组织控制逻辑，实现从信号采集、数据处理到执行控制的完整闭环，支持控制器设计验证、嵌入式软件功能测试及多物理域联合仿真。

在模拟过程中，设定驾驶员在 0–1 秒内向油门踏板施加 60N 的力。踏板通过与之相连的弹簧与阻尼系统产生位移，PedalPositionToADC 模块将该位移转换为电压信号输入控制系统。AUTOSAR 控制模块根据采样信号进行逻辑处理，输出的节气门开度命令经过归一化后传递至 ThrottleBody 模块，控制节气门动作。同时，节气门的位移结果通过传感器反馈回控制系统，形成闭环调节。从仿真结果来看，在施加 60N 力的条件下，油门踏板最大位移约为 15cm，节气门的开度变化与驾驶员踩踏行为高度一致，系统的动态响应符合实际工况，验证了模型设计的合理性与准确性。



- **Location**: `M2/Examples/throttle_control_Example`  

- **Modelica**  
  Model structure:  
  ![](images/autosar_system.png)  
  ThrottlePedalMechanical:
  ![](images/ThrottlePedalMechanical.png)
  Simulation results:  
  ![](images/pedal_result.png)


### 3. AUTOSAR_Physical_Interacction
- **Description**: 该模型名为 AUTOSAR_Physical_Interaction，用于描述一个典型的控制闭环系统，结合了软件控制组件与物理对象的动态交互过程。整个模型由三个部分组成：一个基于 AUTOSAR 架构的软件组件模型（autosar_swc）、一个描述物理系统的模型（PhysicalSystem），以及它们之间的连接逻辑。

物理系统模型 PhysicalSystem 表示一个简化的二阶机械系统，包含质量、阻尼和弹簧元件。它接收两个外部控制力输入，分别对应软件组件输出的两个控制端口，并根据牛顿第二定律建立动力学方程：加速度等于外力减去阻尼力和弹簧力后的净值除以质量。模型输出位置和速度，用于反馈给控制器。

软件组件模型使用的是autosar_swc_Example这个的案例。

在顶层模型中，两个子系统完成物理量和控制信号的闭环连接。物理系统的位移与速度分别连接至软件组件的两个输入口，而软件组件的两个输出控制力则反作用于物理系统。这样，系统形成了“感知—决策—执行—反馈”的闭环控制逻辑。 
- **Location**: `M2/Examples/AUTOSAR_Physical_Interacction`
- **Modelica**  

  Simulation results:  
  ![](images/AUTOSAR_Physical_Interaction_result.png)


### 4. Mechanical Suspension System
- **Description**: Combines mechanical suspension dynamics with AUTOSAR control logic.  
- **Location**: `Examples/SuspensionSystem.mo`


---

## About the Library Scope and Community Contribution

The AUTOSAR standard is extensive and continuously evolving. This library does **not** aim to cover the entirety of the AUTOSAR specification. Instead, it provides a **modular, fully extensible, and customizable** framework designed to serve as a foundation for further development.

✨ We warmly welcome developers, researchers, and practitioners from the AUTOSAR and Modelica communities to contribute, extend, and improve this library.  
Together, we can accelerate the growth of open-source tools supporting AUTOSAR, fostering innovation and collaboration across automotive and multi-domain system modeling.

If you are interested in contributing, please refer to the repository’s contribution guidelines or open an issue to start a discussion.  
Let’s build a vibrant ecosystem for open, flexible, and high-quality AUTOSAR modeling!
