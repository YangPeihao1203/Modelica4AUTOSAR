# Example Models Overview

This document provides detailed descriptions and key information for the 10 example models included in the `Examples` folder.

---

## Simulation Time Comparison

Below is a comparison table showing the simulation times for the three example cases in Modelica (1st and 2nd simulations) and Simulink.  
Note: Since some Simulink blocks (e.g., From/Goto) do not have direct equivalents in Modelica, exact one-to-one matching is not always possible. However, the models are functionally equivalent and results are consistent. Also, system-level port names do not have to match the exact subcomponent port names, e.g., `a.u1` can correspond to `a.b.u`, as long as the connections are correct.

| Example Case                | Modelica Simulation Time (1st) | Modelica Simulation Time (2nd) | Simulink Simulation Time |
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

### 1. Throttle System
- Complex throttle control system with 179 variables and 451 parameters.

### 2. Electric Motor Control System
- **Description**: Integration of AUTOSAR logic with electrical motor control.  
- **Highlights**: Demonstrates electrical-mechanical co-simulation.  
- **Location**: `Examples/ElectricMotorControl.mo`

### 3. Mechanical Suspension System
- **Description**: Combines mechanical suspension dynamics with AUTOSAR control logic.  
- **Location**: `Examples/SuspensionSystem.mo`

---

## About the Library Scope and Community Contribution

The AUTOSAR standard is extensive and continuously evolving. This library does **not** aim to cover the entirety of the AUTOSAR specification. Instead, it provides a **modular, fully extensible, and customizable** framework designed to serve as a foundation for further development.

✨ We warmly welcome developers, researchers, and practitioners from the AUTOSAR and Modelica communities to contribute, extend, and improve this library.  
Together, we can accelerate the growth of open-source tools supporting AUTOSAR, fostering innovation and collaboration across automotive and multi-domain system modeling.

If you are interested in contributing, please refer to the repository’s contribution guidelines or open an issue to start a discussion.  
Let’s build a vibrant ecosystem for open, flexible, and high-quality AUTOSAR modeling!
