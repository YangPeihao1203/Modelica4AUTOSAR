# Review Response

We appreciate the valuable feedback provided by all reviewers. Common and major concerns have been addressed through the EasyChair system. This document focuses on detailed responses to specific comments raised by each reviewer to clarify and expand on our work.

---

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
Thank you for your question. Due to page limitations, the table presents a simplified summary of AUTOSAR port concepts rather than the full detailed definitions from the AUTOSAR standard. We intend to include precise references to the relevant AUTOSAR documentation in a future version of the paper. Regarding the Simulink reference, we were unable to locate explicit descriptions related to required ports in the cited MathWorks documentation. Our modeling approach aligns with the functional behaviors of AUTOSAR ports as implemented in Simulink.

---

**Comment 20:**  
Please explain how transitivity in inheritance resolves issues with multiple inheritance.

**Response 20:**  
Thank you for your inquiry. For detailed explanations, please refer to the `AUTOSAR_Library_Encapsulation_Guide.md` document, as space constraints prevented us from elaborating in the paper. Briefly, Modelica supports only single inheritance; thus, when modeling, we select the most specific base class for inheritance. In cases that conceptually require multiple inheritance, we analyze the inheritance chain and choose the most concrete base class to inherit from. This approach ensures that all necessary behaviors and attributes defined in the AUTOSAR metamodel are captured accurately.

---

**Comment 21:**  
In Figure 3, how are the model library and user models used in practice? Because each element occupies a single line in the tree structure, it is almost impossible to display them completely. Have you considered other approaches, such as the “palette” commonly used in many tools, to allow faster browsing and selection of elements?

**Response 21:**  
Thank you for your insightful suggestion. Our model library is a one-to-one encapsulation of the AUTOSAR standard. To facilitate user interaction, we additionally provide a VisibleElements package that enables drag-and-drop visual modeling. After establishing the basic Software Component (SWC) framework via drag-and-drop, users can incorporate other Modelica libraries to build the detailed internal controller behavior. When creating a user model, users simply create a new model and drag elements from the VisibleElements package into it for modeling. For RunnableEntity, since its internal behavior varies significantly across projects and due to Modelica’s language characteristics, we do not provide a drag-and-drop interface. Instead, users create a new model named RunnableEntity that extends `M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity` to indicate its role. Your suggestion of a component palette is indeed inspiring and would facilitate the organization and configuration of the complex AUTOSAR elements. We plan to implement similar features in future work to enhance usability and modeling efficiency. Currently, our approach focuses on providing a Modelica-based model library, which supports portability and cross-platform compatibility of our methodology.

---

**Comment 22:**  
Why does the language design not go beyond Simulink, for example by directly displaying timing aspects in software component connection diagrams? The main text mentions timing but it is not reflected in the model.

**Response 22:**  
Thank you for your question. This issue has been addressed in the response section and will also be emphasized in the Motivation section of the paper.


---

## Reviewer #2

**Comment 1:**  
The method is only validated using a small example. What is the largest case study used so far? Are there plans for a more comprehensive evaluation?

**Response 1:**  
Thank you for your insightful comment. To intuitively demonstrate the feasibility of our method, we selected a concise yet illustrative example in the paper. In practice, our largest test case to date is an **automotive throttle control system**, involving **179 variables and 451 parameters**. We will supplement the revised manuscript with performance evaluations based on this larger case. Our approach is designed to be scalable, and we plan to collaborate with the open-source community to extend support to larger-scale cases in the future.

---

**Comment 2:**  
In addition to the lack of support for BSW and RTE, the paper lacks a discussion on the limitations of the proposed approach. How extensible is the Modelica integration? What about performance and usability?

**Response 2:**  
Thank you for your suggestion. We will add a detailed discussion of the method’s limitations in the revised manuscript, particularly regarding BSW and RTE support. Our method is built upon open-source Modelica libraries, offering good extensibility by allowing users to define new Modelica classes to support additional AUTOSAR elements. Regarding performance, we will include empirical results, such as simulation time comparisons with Simulink. As for usability, our method has been tested in case studies, and we provide comprehensive documentation and example projects to facilitate adoption.

---

**Comment 3:**  
There have been prior studies on using Modelica in the AUTOSAR context. These related works should be discussed:  
- Thiele et al.: "Using the Functional Mockup Interface as an Intermediate Format in AUTOSAR Software Component Development"  
- Janczyk et al.: "Validation of a Battery Management System based on AUTOSAR via FMI on a HiL platform"  
- Neudorfer et al.: "FMI for Physics-Based Models on AUTOSAR Platforms"

**Response 3:**  
Thank you for pointing out these important references. We will discuss these works in the related work section of the revised manuscript. While these studies utilize FMI as an intermediate format, our approach directly models AUTOSAR elements at the Modelica language level, without relying on external toolchains. This allows us to support **cross-domain modeling and simulation** more naturally and flexibly.

---

**Comment 4:**  
Clarify the statement: "This design enables more flexible data type definitions and handling."

**Response 4:**  
Thank you for the question. Since AUTOSAR defines strict data type semantics, mapping AUTOSAR data types to Modelica representations is essential. For example, basic types such as `uint8` or `boolean` can be directly mapped to `Integer` or `Boolean` in Modelica, or defined as new types using `type`. This mapping allows us to flexibly express AUTOSAR data types within Modelica. We will provide more mapping strategies in the revised version.

---

**Comment 5:**  
More explanation is needed for Figure 1. Some arrows suggest dependency or sequence, but it is unclear. For instance, is "Data Type Mapping -> Static Structure -> Visual Representation" a workflow or sequential artifact generation?

**Response 5:**  
Thank you for the comment. We apologize for the confusion. The arrows in Figure 1 represent **logical dependencies**, not strictly sequential steps. "Data Type Mapping" is a foundational task that establishes the correspondence between AUTOSAR and Modelica types. Based on this, we build the "Static Structure", defining software components and their relationships. "Visual Representation" is then derived to provide graphical views that facilitate model construction and understanding. In practice, this process is iterative and may involve refinements. We will clarify this in the figure with annotations and adjust its presentation for better clarity.

---

**Comment 6:**  
Page 5: I do not understand the principle of "minimalism and descriptiveness".

**Response 6:**  
Thank you for your question. The principle refers to reducing unnecessary complexity and redundancy while ensuring that the model descriptions remain sufficiently informative. We selected the core elements from the AUTOSAR metamodel for initial modeling and demonstrated that other elements can be similarly extended using the same approach.

---

**Comment 7:**  
The phrase "seamless integration of complex cross-domain applications" is vague—what exactly does "cross-domain" mean?

**Response 7:**  
"Cross-domain" refers to the integration and co-simulation of models from different engineering domains, such as software, hardware, electrical, and mechanical systems. In our example, we integrate AUTOSAR application-layer models with a **physical light circuit**, demonstrating how electrical behavior (modeled via Ohm’s Law) can interact seamlessly with AUTOSAR software logic in a single simulation environment.

---

**Comment 8:**  
Page 10: The paper claims to "ensure accurate ECU behavior modeling"—how is this accuracy achieved if there is no modeling of cores, tasks, or memory?

**Response 8:**  
Thank you for raising this important point. Our method currently focuses on the **application layer** of AUTOSAR, modeling how software components behave in response to input signals. This is highly valuable for validating functional correctness and performance of applications. We do not currently model hardware-level aspects such as cores, tasks, or memory, which are typically handled by BSW and RTE layers. The layered architecture of AUTOSAR enables us to focus on application modeling independently. In future work, we plan to extend our method to incorporate these lower-level details for a more comprehensive ECU behavior simulation.

---

**Comment 9:**  
Readers might be interested in how much time was required to implement the method (approximate person-months).

**Response 9:**  
The development of the AUTOSAR Modelica library took approximately **6 person-months**. This includes understanding the AUTOSAR standard, learning the Modelica language, and implementing the model library. As the library is open-source and modular, new AUTOSAR elements can be supported by adding new Modelica classes. We hope to further develop it in collaboration with the open-source community.

---

**Comment 10:**  
Are there any performance issues when co-simulating larger components? How does it compare to Simulink for large models?

**Response 10:**  
For demonstration purposes, the paper showcases a headlamp system. However, our largest tested model is the **automotive throttle control system**, with **179 variables and 451 parameters**. In this case, the initial simulation time in Modelica was **7.2132 seconds**, compared to **1.4702 seconds** in Simulink. However, for scenarios involving only parameter changes, Modelica re-simulation was significantly faster—only **0.057 seconds**—making it more suitable for parameter sweeps. We will provide detailed performance comparisons in the revised manuscript.

---

**Comment 11:**  
Minor details.

**Response 11:**  
Thank you for your thorough review and valuable suggestions. We will revise the manuscript to correct all identified minor issues and improve overall clarity and readability.








---

## Reviewer #3

**Comment 1:**  
The visual modeling rules could be defined in a modeling-compatible manner, for example using OCL expressions or model transformation rules.

**Response 1:**  
Thank you very much for your valuable suggestion. We agree that defining visual modeling rules using OCL expressions or model transformation rules would theoretically provide better formalization and compatibility. Currently, our rule design prioritizes implementation simplicity and ease of use, and does not fully adopt formal languages for description.

As part of our Future Work, we plan to explore approaches based on OCL or model transformation techniques to enhance the expressiveness of rules and improve compatibility with other modeling tools. Your suggestion provides important guidance for our further improvements.

---

**Comment 2:**  
The formalization of the mapping between AUTOSAR and Modelica is based on a denotational semantic approach. For the modeling community, using OCL or transformation rules for formalization might be more appropriate. Are there any specific limitations or difficulties that make the latter approach infeasible?

**Response 2:**  
Thank you for your insightful comments. Our choice of a denotational semantic formalization was mainly driven by practical needs at the current toolchain and research stage, enabling a clear expression of the semantic intent of the mapping while maintaining a degree of flexibility.

While formalizing with OCL or model transformation rules could indeed strengthen formal rigor and automation capabilities, we face the following challenges:

- The learning curve of OCL and model transformation rules is relatively steep, potentially increasing development complexity.  
- Existing tools provide limited support for the complex AUTOSAR-to-Modelica mappings, making it difficult to comprehensively cover all mapping details.  
- Our current approach focuses on preliminary validation and demonstration, where denotational formalization allows rapid expression and adjustment.

In future work, we plan to gradually integrate OCL or model transformation techniques to achieve more formalized and automated mapping definitions, enhancing rigor and tool support. Your suggestions are highly valuable and will be carefully considered.

---

**Comment 3:**  
In the case study description, it appears that the AUTOSAR model needs to be manually reconstructed on the Modelica platform. Is this true? If so, why is there no automated mapping or import functionality from AUTOSAR models to Modelica? What limitations exist?

**Response 3:**  
Thank you for your question. At the current stage, our work primarily focuses on establishing the mapping framework and methodology between AUTOSAR and Modelica. Indeed, partial manual modeling was used in the example to validate the feasibility of our approach.

The main limitations for automated mapping and import are:

- The AUTOSAR standard and model structures are complex and diverse, with frequent standard version updates, which makes designing and maintaining automated transformation rules challenging.  
- Mature, general-purpose tools or intermediate formats for AUTOSAR-to-Modelica conversion are currently lacking.  
- To ensure semantic accuracy, automated tools need to handle extensive contextual information and constraints, which has not yet been fully achieved in our current research.

Your suggestion is very valuable for us to further improve this work—thank you!

---

**Comment 4:**  
The case study seems limited in scale and lacks representativeness and generalizability. Please describe the threats to validity for the empirical observations and how you addressed these threats.

**Response 4:**  
Thank you for your valuable comments. Regarding threats to validity, we have taken the following measures:

1. Targeted case selection: We chose typical and representative AUTOSAR application scenarios, focusing on key technical points to validate the core capabilities of our approach. Additionally, we have supplemented more modeling cases in our Git repository, including comparisons with Simulink cases, covering model construction, simulation results, and performance.  
2. Detailed experimental description: We clearly documented the experiment steps and environment to ensure reproducibility of results.  
3. Acknowledgment of limitations: We openly acknowledge the limited scale of the case study and that it does not cover all complex application scenarios. Future work plans to support more AUTOSAR elements and more complex cases.

---

**Comment 5:**  
It appears that users of the tool were not involved in the empirical observations. Are users willing to reproduce models across different platforms? How is the feedback from Modelica simulation traced back to AUTOSAR?

**Response 5:**  
Regarding user involvement and model reproduction, our current work is primarily at the stage of methodology and technical framework experimentation, with limited user participation so far. We have made the tool publicly available for download on related websites to encourage user adoption, and we continuously collect feedback for improvements. This paper mainly demonstrates feasibility and preliminary results, and we hope to attract more developers through open-source efforts.

As for feedback from Modelica simulations, our vision is that once the AUTOSAR model represented in Modelica achieves correct results in multi-domain co-simulation, C code can be directly generated from the Modelica model and integrated back into the AUTOSAR toolchain. If discrepancies occur, Modelica model parameters or structures can be adjusted and revalidated through simulation.

---

**Comment 6:**  
Minor details.

**Response 6:**  
Thank you for your thorough review and valuable suggestions. We will revise the manuscript to address all minor issues and improve the overall clarity and readability.

---

**Comment 7:**  
Could you provide a code repository containing more examples/scenarios?

**Response 7:**  
Thank you for your guidance. We have added more examples and scenarios to the code repository, including various AUTOSAR application cases and comparisons with Simulink.



---



🙏 We sincerely thank all reviewers for their constructive and insightful feedback. Your comments have greatly contributed to improving the quality of our work and the ongoing development of this open-source platform.
