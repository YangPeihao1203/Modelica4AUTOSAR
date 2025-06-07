# Visual Modeling and Simulation of AUTOSAR Application Layer Models Using Modelica

## Overview
This repository provides an open-source Modelica-based framework for visual modeling and simulation of AUTOSAR application layer models. The project introduces a method for encapsulating AUTOSAR constructs in Modelica, enabling multi-domain simulations with improved flexibility and interoperability.

## Features
- **Encapsulation of AUTOSAR Models**: The `M2` folder contains a structured AUTOSAR model library implemented in Modelica.
- **Multi-domain Simulation**: The `AUTOSAR_HeadLamp.mo` model integrates AUTOSAR with a Modelica-based automotive lighting system (`HeadLamp.mo`).
- **Open-source and Extensible**: Facilitates industry collaboration and supports cross-domain applications beyond automotive systems.

## Repository Structure
```
📂 M2/ # Encapsulated AUTOSAR model library
├── 📂 VisibleElements/ # Visual modeling elements for drag-and-drop AUTOSAR SWC construction
├── 📂 Examples/ # Ten modeling examples across automotive, electrical, and mechanical domains
├── 📂 Utilities/ # Utility components and helper functions for model development
├── 📂 AUTOSAR Templates/ # Core modeling templates (e.g., GenericStructure, SWComponentTemplate) based on AUTOSAR standards
└── 📂 MSR/ # Contains class definitions for elements in the Manufacturer Supplier Relationship (MSR)
```

## Examples

This repository includes **10 comprehensive example models** showcasing the versatility and power of our Modelica-based AUTOSAR framework.  
- **3 examples** are fully comparable with official Simulink benchmarks, including detailed performance comparisons.  
- **7 examples** highlight the multi-domain modeling capabilities, covering electrical, mechanical, and automotive systems.

For **in-depth descriptions, usage instructions, simulation results, and performance metrics**, please refer to the dedicated showcase document: [EXAMPLES.md](./EXAMPLES.md).  
Explore these cases to see how our approach enables flexible, extensible, and high-fidelity system modeling across domains.


## 📘 AUTOSAR Model Encapsulation Guide

For developers interested in understanding how AUTOSAR software components are structurally encapsulated using Modelica, we provide a detailed reference:

📄 [AUTOSAR_Library_Encapsulation_Guide.md](./AUTOSAR_Library_Encapsulation_Guide.md)

This guide includes:
- Mapping between AUTOSAR meta-model definitions and Modelica classes
- Inheritance strategies and Modelica limitations (e.g., multi-inheritance simplification)
- Visual modeling conventions and usage of `VisibleElements`
- Guidelines for extending the model library in compliance with AUTOSAR standards

We highly recommend reading this document if you're contributing to or customizing the AUTOSAR library.

## 🔍 Threats and Future Work
This work is the first to integrate Modelica with AUTOSAR, enabling multi-domain modeling and simulation of application-layer software. While it demonstrates feasibility and effectiveness, several limitations remain.

Due to the vast scope of the AUTOSAR standard, our implementation focuses on the application layer and its simulation behaviors, rather than covering the full specification. The comparison is therefore limited to behavioral modeling tools such as Simulink. In addition, to ensure usability, we adopt an intuitive, non-formalized encapsulation of AUTOSAR elements, which may limit formal verification and integration with standard toolchains.

Future work will extend support to more AUTOSAR elements, including RTE and BSW layers, and enhance compatibility with more industrial tools. We also plan to adopt formal methods (e.g., OCL, model transformations) to improve semantic rigor and support automated verification and integration into model-driven workflows.

## Installation & Usage
### Prerequisites
- **Modelica Environment**: Install [MWORKS Sysplorer](https://www.tongyuan.cc/product/MWorksSysplorer).
- **Modelica Standard Library**: Version 4.0.0 

### Steps to Run Simulation
1. Clone the repository:
   ```sh
   git clone https://github.com/YangPeihao1203/Modelica4AUTOSAR.git
   cd your-repository
   ```
2. Open MWORKS Sysplorer Modelica environment.
3. Load the M2 package by opening `M2.package.mo`.
4. Load the `M2.Examples.HeadLamp.mo` file.
5. Load the `M2.Examples.AUTOSAR_HeadLamp.mo` file.
6. Run the simulation for `AUTOSAR_HeadLamp.mo` and analyze the results.

## Citation
If you use this project in your research, please cite:
```
@article{YourCitation,
  title={Visual Modeling and Simulation of AUTOSAR Application Layer Models Using Modelica},
  author={XXXXXXXXXXXXX},
  year={2025}
}
```

## License
This project is released under the AGPL License. See [LICENSE](LICENSE) for details.

## Contact
For any inquiries or contributions, feel free to open an issue or contact `yangpeihao@stu.hit.edu.cn`. 🚀

