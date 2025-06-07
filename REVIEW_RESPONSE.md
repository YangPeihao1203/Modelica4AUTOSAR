# Review Response

We appreciate the valuable feedback provided by all reviewers. Common and major concerns have been addressed through the EasyChair system. This document focuses on detailed responses to specific comments raised by each reviewer to clarify and expand on our work.

---

## Reviewer #1

## Reviewer #1

**Comment 1:**  
The manuscript does not indicate whether the complete library was used or if there are other examples.

**Response 1:**  
Thank you for your comment. We used the complete library, where `M2.VisibleElements` directly participates in visual modeling through drag-and-drop. This library inherits other modules that are strictly encapsulated according to the AUTOSAR standard. We also provide additional example model libraries related to other cases.

---

**Comment 2:**  
It is good to compare with existing options, but why limit the comparison only to Simulink?

**Response 2:**  
Thank you for the suggestion. Our work currently focuses on modeling and simulation at the AUTOSAR application layer, so we selected Simulink as the comparison target because it is a widely used tool in this domain, especially for control and embedded systems. We will consider adding an analysis of validity threats and clarify that future work will include more AUTOSAR elements, such as RTE and BSW layers, and enrich the AUTOSAR application layer content to compare with more tools.

---

**Comment 3:**  
Given the existing limitations, it is inappropriate to assert that the method “provides higher modeling flexibility, cross-platform compatibility, and multi-domain integration.”

**Response 3:**  
We will include a validity threat analysis and adopt more cautious wording to describe our work. We will explicitly state the current limitations in AUTOSAR application layer modeling and emphasize directions and goals for future work.

---

**Comment 4:**  
Provide examples early on to explain why current tools fail to meet multi-causal modeling needs. Why does the industry currently use single-domain tools? Please cite references to emphasize research on multi-domain modeling requirements to strengthen motivation.

**Response 4:**  
We will clearly explain the limitations of current tools in multi-causal modeling within the manuscript to reinforce the motivation.

---

**Comment 5:**  
In the case study, explicitly indicate which parts are non-causal.

**Response 5:**  
Thank you for the suggestion. In the case study, we demonstrate modeling and simulation of an automotive HeadLamp, highlighting the non-causal modeling parts. The non-causal modeling is achieved through Ohm’s law and current control, seamlessly interacting with the AUTOSAR application layer system. We will clarify this further in the manuscript.

---

**Comment 6:**  
Why focus only on Simulink, while other tools such as Stateflow are also applied in AUTOSAR toolchains and code generation? It would be better to cite and discuss these other works and explain the choice to compare with Simulink.

**Response 6:**  
Same as Response 2.

---

**Comment 7:**  
The AUTOSAR meta-model also defines other connections related to software components beyond those defined in Rule 2, such as connections between runnable entities within SWCs. Where are these connections defined? Additionally, there are various types of connections, like client/server, Clprm, NvData, read/write accesses. Are there no corresponding rules for these connections?

**Response 7:**  
Thank you for your suggestion. We apologize for any misunderstanding caused by our formalization. To implement AUTOSAR application layer modeling based on Modelica, we encapsulated and modeled only selected elements from the AUTOSAR meta-model. In Rule 2, we define connections between runnable entities that transfer IRVs. Regarding client/server interfaces, since these represent communication patterns nested inside RPORTs, we did not provide a visual connection form. Connections like NvData and read/write access are outside the application layer’s scope, so visual modeling rules for them are not included. We plan to extend support to more AUTOSAR elements and connection types in future work, and clarify the use of more formal methods for AUTOSAR application layer visual modeling.

---

**Comment 8:**  
How are naming policies such as shortNames, UUIDs, and mandatory values defined?

**Response 8:**  
Thank you for the question. Naming policies like shortNames and UUIDs are defined in the AUTOSAR meta-model. Since they do not directly affect visual modeling at the application layer, we did not detail them in the manuscript. In fact, in the Modelica-based AUTOSAR model library, simple configuration items such as shortNames and UUIDs can be specified via Modelica parameters or centralized configuration. We consider this a direction for future work.

---

**Comment 9:**  
As far as I know, SWCs can have multiple runnables, but the example shows only one runnable per SWC as per Rule 7. Simulink clearly specifies runnables (e.g., Figure 4), but this is not reflected in the proposed method. Why? How would multiple runnables in one SWC be handled? Please provide the meta-model of the proposed language.

**Response 9:**  
Thank you for your comment. We apologize for any confusion caused by our formalization. Rule 7 defines the content inside each runnable entity’s controller model, whose elements originate from other Modelica libraries. Rule 1 states that an SWC can contain multiple runnable entities, and Rules 2 and 3 define the connections among runnable entities, IRVs, RPORTs, and PPORTs. We will clarify this and provide more formal definitions of AUTOSAR application layer visual modeling in future work.

---

**Comment 10:**  
Since cycles and intervals are important, would it be better if the proposed method could visualize them somehow (e.g., in Figure 5)?

**Response 10:**  
Thank you for the suggestion. Sampling times are configured as parameters, so we only mentioned them in the text and did not visualize them. If needed, we will add relevant annotations to Figure 5.

---

**Comment 11:**  
In Figure 4, pseudo-names like RPort_1 are used, but the manuscript only later describes the actual model. Why not use the real names directly in Figure 4, as is commonly done? The same applies to Figure 5 and later sections, including simulation results.

**Response 11:**  
Thank you for the suggestion. The case was extracted from a Simulink model, so to maintain consistency and intuitive comparison with Simulink and official documentation, we used pseudo-names like RPort_1. If desired, we can revise the figures to use real model names.

---

**Comment 12:**  
Why is there a connection from `runnable3_subsystem` to `runnable1_subsystem` in Modelica, while this is absent in Simulink (Figure 4)?

**Response 12:**  
Thank you for the question. Simulink uses From/Goto blocks to connect `runnable1_subsystem` and `runnable3_subsystem` for simplicity, but Modelica lacks From/Goto constructs. Therefore, we represented the connection directly. Functionally, both approaches are equivalent.

---

**Comment 13:**  
What do `u1`, `u`, and `u2` represent in Figure 5? The manuscript does not explain them.

**Response 13:**  
Thank you for the question. `u1`, `u`, and `u2` are input port names in Modelica representing input signals. Because Simulink and Modelica modeling approaches differ, and Modelica requires the number of variables to equal the number of equations, input ports are necessary in the Modelica SWC case for simulation. We will add explanations for these ports in the figure.

---

**Comment 14:**  
Interface (port) naming appears inconsistent; for example, in (d), `runnable1` subsystem / `EnableSubsystem` receives `u` and `u1`, while in (a), `runnable1` subsystem has `u1` and `u2`.

**Response 14:**  
Thank you for the observation. We apologize for any confusion. In Modelica, as long as port types match and connections are correct, name differences do not affect simulation logic. These ports belong to different package namespaces, so no conflict arises. The connections like `connect(u1, subsystem_EnableSubsystem.u)` and `connect(u2, subsystem_EnableSubsystem.u1)` map the interfaces correctly in the equations.

---

**Comment 15:**  
The manuscript currently cannot support the conclusion that the method “provides stronger modeling flexibility, cross-platform compatibility, and multi-domain integration” due to its limitations (e.g., only experimental results, missing lower-level modules, no demonstration of other library elements). It is suggested to express this more cautiously as “the method has potential” or similar. Alternatively, please clarify whether any cases have applied all library modules.

**Response 15:**  
Same as Response 3.

---

**Comment 16:**  
Please provide references to support the claim that “Modelica has become a key standard in unified modeling and a driving force in industrial digital transformation.”

**Response 16:**  
Thank you for the suggestion. We will add the following references:  
- Fritzson, P. (2014). *Principles of Object-Oriented Modeling and Simulation with Modelica 3.3: A Cyber-Physical Approach*. Wiley-IEEE Press.  
- Demkovich, N., Yablochnikov, E., & Abaev, G. (2018). Multiscale modeling and simulation for industrial cyber-physical systems. *2018 IEEE Industrial Cyber-Physical Systems (ICPS)*, 291-296. https://doi.org/10.1109/ICPHYS.2018.8387674  
- Experiments and comparison of digital twinning of photovoltaic panels by machine learning models and a cyber-physical model in Modelica.

---

**Comment 17:**  
Please explain the difference between Adaptive AUTOSAR and Classic AUTOSAR.

**Response 17:**  
Thank you for your question. Adaptive AUTOSAR and Classic AUTOSAR represent two distinct AUTOSAR architectures. Adaptive AUTOSAR is designed for high-performance computing platforms, supporting dynamic configuration and more complex application scenarios such as autonomous driving and vehicle-to-everything (V2X) communications. In contrast, Classic AUTOSAR targets traditional embedded systems, emphasizing real-time performance and resource constraints. Our work primarily focuses on application layer modeling within the Classic AUTOSAR framework. Due to space limitations, we did not cover Adaptive AUTOSAR in detail in this paper. However, we plan to extend our modeling and simulation approaches to Adaptive AUTOSAR in future work.

---

**Comment 18:**  
In Figure 1, why is there no representation of the relationship from the AUTOSAR standard to the formalized AUTOSAR model?

**Response 18:**  
Thank you for your valuable suggestion. In Figure 1, we only depict the direct relationship from the AUTOSAR Standard to the “Encapsulation Rules for AUTOSAR Library” for clarity. To keep the diagram concise, we omitted the link to the formalized AUTOSAR model. In fact, the formalized AUTOSAR model is based on both the AUTOSAR standard and the Modelica language specification. We will consider adding this relationship in future revisions if appropriate.

---

**Comment 19:**  
Why does the description of ports in Table II differ from the AUTOSAR required ports and also differ from the descriptions found in Simulink (referenced at mathworks.com/help/autosar/ug/example-modeling-patterns-for-autosar-runnables.html)?

**Response 19:**  
Thank you for your question. Due to page limitations, the table presents a simplified summary of AUTOSAR port concepts rather than the full detailed definitions from the AUTOSAR standard. We intend to include precise references to the relevant AUTOSAR documentation in a future version of the paper. Regarding the Simulink reference, we were unable to locate explicit descriptions related to required ports in the cited MathWorks documentation. Our modeling approach aligns with the functional behaviors of AUTOSAR ports as implemented in Simulink, but minor discrepancies may exist due to abstraction levels.

---

**Comment 20:**  
Please explain how transitivity in inheritance resolves issues with multiple inheritance.

**Response 20:**  
Thank you for your inquiry. For detailed explanations, please refer to the AUTOSAR_Library_Encapsulation_Guide.md document, as space constraints prevented us from elaborating in the paper. Briefly, Modelica supports only single inheritance; thus, when modeling, we select the most specific base class for inheritance. In cases that conceptually require multiple inheritance, we analyze the inheritance chain and choose the most concrete base class to inherit from. This approach ensures that all necessary behaviors and attributes defined in the AUTOSAR metamodel are captured accurately.

---

**Comment 21:**  
In Figure 3, how are the model library and user models used in practice? Because each element occupies a single line in the tree structure, it is almost impossible to display them completely. Have you considered other approaches, such as the “palette” commonly used in many tools, to allow faster browsing and selection of elements?

**Response 21:**  
Thank you for your insightful suggestion. Our model library is a one-to-one encapsulation of the AUTOSAR standard. To facilitate user interaction, we additionally provide a VisibleElements package that enables drag-and-drop visual modeling. After establishing the basic Software Component (SWC) framework via drag-and-drop, users can incorporate other Modelica libraries to build the detailed internal controller behavior. When creating a user model, users simply create a new model and drag elements from the VisibleElements package into it for modeling. For RunnableEntity, since its internal behavior varies significantly across projects and due to Modelica’s language characteristics, we do not provide a drag-and-drop interface. Instead, users create a new model named RunnableEntity that extends `M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity` to indicate its role. Your suggestion of a component palette is indeed inspiring and would facilitate the organization and configuration of the complex AUTOSAR elements. We plan to implement similar features in future work to enhance usability and modeling efficiency. Currently, our approach focuses on providing a Modelica-based model library, which supports portability and cross-platform compatibility of our methodology.

---

**Comment 22:**  
Why does the language design not go beyond Simulink, for example by directly displaying timing aspects in software component connection diagrams? The main text mentions timing but it is not reflected in the model.

**Response 22:**  
Thank you for raising this important point. We will emphasize the significance of timing and the current limitations of our modeling approach in the Motivation section of the paper. At present, our work primarily focuses on functional and structural modeling, with timing information represented indirectly through parameters such as sampling periods rather than through explicit visualization. In future work, we intend to extend the modeling language and tools to incorporate graphical support for timing and scheduling aspects, thereby better addressing the needs of industrial multi-domain timing analysis.


---

## Reviewer #2

**Comment 1:**  
(请填写评审第一个问题)

**Response 1:**  
(请填写对应回复)

**Comment 2:**  
(请填写评审第二个问题)

**Response 2:**  
(请填写对应回复)

---

## Reviewer #3

**Comment 1:**  
(请填写评审第一个问题)

**Response 1:**  
(请填写对应回复)

**Comment 2:**  
(请填写评审第二个问题)

**Response 2:**  
(请填写对应回复)

---

🙏 We sincerely thank all reviewers for their constructive and insightful feedback. Your comments have greatly contributed to improving the quality of our work and the ongoing development of this open-source platform.
