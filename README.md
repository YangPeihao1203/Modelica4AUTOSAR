# Visual Modeling and Simulation of AUTOSAR Application Layer Models Using Modelica

## Overview
This repository provides an open-source Modelica-based framework for visual modeling and simulation of AUTOSAR application layer models. The project introduces a method for encapsulating AUTOSAR constructs in Modelica, enabling multi-domain simulations with improved flexibility and interoperability.

## Features
- **Encapsulation of AUTOSAR Models**: The `M2` folder contains a structured AUTOSAR model library implemented in Modelica.
- **Multi-domain Simulation**: The `AUTOSAR_HeadLamp.mo` model integrates AUTOSAR with a Modelica-based automotive lighting system (`HeadLamp.mo`).
- **Open-source and Extensible**: Facilitates industry collaboration and supports cross-domain applications beyond automotive systems.

## Repository Structure
```
📂 M2/                 # Encapsulated AUTOSAR model library
📜 HeadLamp.mo         # Modelica representation of the electrical properties of a headlamp
📜 AUTOSAR_HeadLamp.mo # Multi-domain simulation model integrating AUTOSAR and headlamp behavior
📜 README.md           # Project documentation
```

## Installation & Usage
### Prerequisites
- **Modelica Environment**: Install [MWORKS Sysplorer](https://www.openmodelica.org/).

### Steps to Run Simulation
1. Clone the repository:
   ```sh
   git clone https://github.com/YangPeihao1203/Modelica4AUTOSAR.git
   cd your-repository
   ```
2. Open MWORKS Sysplorer Modelica environment.
3. Load the M2 package by opening `M2.package.mo`.
4. Load the `HeadLamp.mo` file.
5. Load the `AUTOSAR_HeadLamp.mo` file.
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

