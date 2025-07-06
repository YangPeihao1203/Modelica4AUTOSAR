# List of the AUTOSAR meta-model elements
### contents
 AUTOSARTemplates　[1](#1)  
 MSR　　　　　　　 [267](#267)   
 Utilities　　　　　　[358](#358)  
 VisibleElements　　 [368](#368)  


||Class|Note|
|------|-----|-------|
| <span id="1"></span>1 |String|This represents a String in which white-space shall be normalized before processing. For example:<br>in order to compare two Strings:<br>• leading and trailing white-space needs to be removed<br>• consecutive white-space(blank,cr,If,tab) needs to be replaced by one blank.<br>Tags:<br>xml.xsd.customType=STRING<br>xml.xsd.type=string|
|2|NameToken|This is an identifier as used in xml, e.g. xml-names. Typical usages are, for example, the names of type emitters, protocols, or profiles. <br>Note: Although NameToken supports a wide range of characters, the actually allowed patterns for a certain attribute typed by NameToken may be further restricted by the specification of that attribute.<br>Tags:<br>xml.xsd.customType=NMTOKEN-STRING<br>xml.xsd.type=NMTOKEN|
|3|DateTime|A datatype representing a timestamp.The smallest granularity is 1 second.This datatype represents a timestamp in the format yyyy-mm-dd followed by an optional time. The lead-in character for the time is 'T' and the format is hh:mm:ss. In addition, a time zone designator shall be specified. The time zone designator can either be 'Z'(for UTC) or the time offset UTC,i.e. (+&#124;-)hh.<br>Examples:<br>2009-07-23<br>2009-07-23T14:38:00+01:00<br>2009-07-23T13:38:00Z<br>Tags:<br>xml.xsd.customType=DATE<br>xml.xsd.pattern=([0-9]{4}-[0-9]{2})(T[0-9]{2}:[0-9]{2}(Z&#124;([0-9]{2}:[0-9]{2})))?<br>xml.xsd.type=string|
|4|Identifier|An Identifier is a string with a number of constraints on its appearance,satisfying the requirements typical programming languages define for their Identifiers. This datatype represents a string,that can be used as a c-Identifier.It shall start with a letter,may consist of letters,digits and underscores.<br>Tags:<br>xml.xsd.customType=IDENTIFIER<br>xml.xsd.maxLength=128<br>xml.xsd.patter=[a-zA-Z][a-zA-Z-9_]*<br>xml.xsd.type=string|
|5|CIdentifier|This datatype represents a string, that follows the rules of C-identifiers.<br>Tags:<br>xml.xsd.customType=C-IDENTIFIER<br>xml.xsd.pattern=[a-zA-Z_][a-zA-Z0-9_]*<br>xml.xsd.type=string|
|6|PositiveInteger|This is a positive integer which can be denoted in decimal, binary, octal and hexadecimal. The value is between 0 and 4294967295.<br>Tags:<br>xml.xsd.customType=POSITIVE-INTEGER<br>xml.xsd.pattern=0&#124;[\\+]?[1-9][0-9]*&#124;0[xX][0-9a-fA-F]+&#124;0[bB][0-1]+&#124;0[0-7]+<br>xml.xsd.type=string|
|7|TimeValue|This primitive type is taken for expressing time values. The numerical value is supposed to be interpreted in the physical unit second.<br>Tags:<br>xml.xsd.customType=TIME-VALUE<br>xml.xsd.type=double|
|8|RevisonLabelString|This primitive represents an internal AUTOSAR revision label which identifies an engineering object. It represents a pattern which<br>• supports three integers representing from left to right MajorVersion, MinorVersion, PatchVersion.<br>• may add an application specific suffix separated by one of '.', '_', ';'.<br>Legal patterns are for example:<br>• 4.0.0<br>• 4.0.0.1234565<br>• 4.0.0_vendor specific;13<br>• 4.0.0;12<br>Tags:<br>xml.xsd.customType=REVISION-LABEL-STRING<br>xml.xsd.pattern=[0-9]+\\.[0-9]+\\.[0-9]+([\\._;].*)?<br>xml.xsd.type=string|
|9|VerbatimStringPlain|This primitive represents a string in which white-space needs to be preserved.<br>This primitive is applied in cases where xml:space attribute cannot be provided by the primitive type but needs to be provided by the container class.<br>This is in particular the case in applications of TR_APRXML_00024.<br>Tags:<br>xml.xsd.customType=VERBATIM-STRING-PLAIN<br>xml.xsd.type=string<br>xml.xsd.whiteSpace=preserve|
|10|XmlSpaceEnum|XmlSpaceEnum is an enumeration type defined in the AUTOSAR XML schema to control whitespace handling in XML elements|
|11|Numerical|This primitive specifies a numerical value. It can be denoted in different formats such as Decimal, Octal,Hexadecimal, Float. See the xsd pattern for details.<br>The value can be expressed in octal, hexadecimal, binary representation. Negative numbers can only be expressed in decimal or float notation.<br>Tags:<br>xml.xsd.customType=NUMERICAL-VALUE<br>xml.xsd.pattern=(0[xX][0-9a-fA-F]+)&#124;(0[0-7]+)&#124;(0[bB][0-1]+)&#124;(([+\\-]?[1-9]<br>[0-9]+(\\.[0-9]+)?&#124;[+\\-]?[0-9](\\.[0-9]+)?)([eE]([+\\-]?)[0-9]+)?)&#124;\\.0&#124;INF&#124;-INF&#124;NaN<br>xml.xsd.type=string|
|12|NameTokens|This is a white-space separated list of name tokens.<br>Tags:<br>xml.xsd.customType=NMTOKENS-STRING<br>xml.xsd.type=NMTOKENS|
|13|CategoryString|This represents the pattern applicable to categories.It is basically the same as Identifier but has a different semantics. Therefore it is modeled as a primitive of its own.<br>Tags:<br>xml.xsd.customType=CATEGORY-STRING<br>xml.xsd.pattern=[a-zA-Z][a-zA-Z0-9_]*<br>xml.xsd.type=string|
|14|SectionInitializationPolicyType|SectionInitializationPolicyType describes the intended initialization of MemorySections. The following values are standardized in AUTOSAR Methodology:<br>• INIT: To be used for (explicitly or not explicitly) initialized variables.<br>•0 CLEARED: To be used for not explicitly initialized variables.<br>• POWER-ON-CLEARED: To be used for variables that are not explicitly initialized (cleared)<br>during normal start-up. Instead these are cleared only after power on reset.<br>Please note that the values are defined similar to the representation of enumeration types in the XML schema to ensure backward compatibility.<br>Tags:<br>xml.xsd.customType=SECTION-INITIALIZATION-POLICY-TYPE<br>xml.xsd.type=NMTOKEN|
|15|ByteOrderEnum|When more than one byte is stored in the memory the order of those bytes may differ depending on the architecture of the processing unit. If the least significant byte is stored at the lowest address, this architecture is called little endian and otherwise it is called big endian.ByteOrder is very important in case of communication between different PUs or ECUs|
|16|MonotonyEnum|This enumerator denotes the values for specification of monotony for e.g. curves.|
|17|IntervalTypeEnum|This enumerator specifies the type of an interval|
|18|ArgumentDirectionEnum|Use cases:<br>• Arguments in ClientServerOperation can have different directions that need to be formally indicated because they have an impact on how the function signature looks like eventually.<br>• Arguments in BswModuleEntry already determine a function signature, but the direction is used tospecify the semantics, especially of pointer arguments.|
|19|ArObject|Implicit base class of all classes in meta-model.|
|20|ARElement|An element that can be defined stand-alone, i.e. without being part of another element (except for packages of course.)|
|21|PackageableElement|This meta-class specifies the ability to be a member of an AUTOSAR package.|
|22|Identifiable|Instances of this class can be referred to by their identifier(within the namespace borders).In additiion to this,Identifiables are objects which contribute significantly to the overall structure of an AUTOSAR description. In particular, Identifiables might contain Identifiables|
|23|Referrable|Instances of this class can be referred to by their identifier(while adhering to namespace borders)|
|24|ShortNameFragment|This class describes how the Referrable.shortName is composed of several shortNameFragments|
|25|MultilanguageReferrable|Instances of this class can be referred to by their identifier (while adhering to namespace borders). They also may have a longName. But they are not considered to contribute substantially to the overall structure of an AUTOSAR description. In particular it does not contain other Referrables|
|26|CollectableElement|This meta-class specifies the ability to be part of a specific AUTOSAR collection of ARPackages or ARElements.|
|27|GeneralAnnotation|This class represents textual comments (called annotations) which relate to the object in which it is aggregated. These annotations are intended for use during the development process for transferring information from one step of the development process to the next one.<br>The approach is similar to the "yellow pads" ...<br>This abstract class can be specialized in order to add some further formal properties.|
|28|MultidimensionalTime|This is used to specify a multidimensional time value based on ASAM CSE codes. It is specified by a code which defined the basis of the time and a scaling factor which finally determines the time value.If for example the cseCode is 100 and the cseCodeFactor is 360, it represents 360angular degrees. If the cseCode is 2 and the cseCodeFactor is 50 it represents 50microseconds|
|29|AtpFeature|Features are properties via which a classifier classifies instances. Or: a classifier has features and every M0 instance of it will have those features.|
|30|AtpClassifier|A classifier classifies M0 instances according to their features. Or: a classifier is something that has instances - an M1 classifier has M0 instances|
|31|AtpStructureElement|A structure element is both a classifier and a feature. As a feature, its structure is given by the feature it owns as a classifier|
|32|AtpType|A type is a classifier that may serve to type prototypes. It is a resusable classifier.|
|33|AtpPrototype|A prototype is a typed feature. A prototype in a classifier indicates that instances of that classifier will have a feature, and the structure of that feature is given by the its type. An instance of that type will play the role indicated by the feature in the owning classifier.<br>A feature is not an instance but an indication of an instance-to-be|
|34|AttributeValueVariationPoint|This class represents the ability to derive the value of the Attribute from a system constant (by SwSystemconstDependentFormula). It also provides a bindingTime.|
|35|ConditionByFormula|This class represents a condition which is computed based on system constants according to the specified expression. The expected result is considered as boolean value.The result of the expression is interpreted as a condition.<br>• "0" represents "false";<br>• a value other than zero is considered "true"
|36|PostBuildVariantCriterion|This class specifies one particular PostBuildVariantSelector.<br>Tags: atp.recommendedPackage=PostBuildVariantCriterions|
|37|PostBuildVariantCondition|This class specifies the value which must be assigned to a particular variant criterion in order to bind the variation point. If multiple criterion/value pairs are specified, they shall all match to bind the variation point.<br>In other words binding can be represented by(criterion1 == value1) && (condition2 == value2) ...
|38|AutosarDataType|Abstract base class for user defined AUTOSAR data types for software|
|39|ApplicationDataType|ApplicationDataType defines a data type from the application point of view. Especially it should be used whenever something "physical" is at stake. An ApplicationDataType represents a set of values as seen in the application model,such as measurement units. It does not consider implementation details such as bit-size, endianess, etc.It should be possible to model the application level aspects of a VFB system by usingApplicationDataTypes only.|
|40|DataTypeMap|This class represents the relationship between ApplicationDataType and its implementing Abstract ImplementationDataType.|
|41|DataTypeMappingSet|This class represents a list of mappings between ApplicationDataTypes and ImplementationDataTypes.<br>In addition, it can contain mappings between ImplementationDataTypes and ModeDeclarationGroups.<br>Tags: atp.recommendedPackage=DataTypeMappingSets|
|42|ApplicationPrimitiveDataType|A primitive data type defines a set of allowed values.<br>Tags: atp.recommendedPackage=ApplicationDataTypes|
|43|ApplicationCompositeDataType|Abstract base class for all application data types composed of other data types.|
|44|ApplicationArrayDataType|An application data type which is an array, each element is of the same application data type.<br>Tags: atp.recommendedPackage=ApplicationDataTypes|
|45|ArraySizeHandlingEnum|This enumeration defines different ways to handle the sizes of variable size arrays.|
|46|ApplicationRecordDataType|An application data type which can be decomposed into prototypes of other application data types.<br>Tags: atp.recommendedPackage=ApplicationDataTypes|
|47|AutosarDataPrototype|Base class for prototypical roles of an AutosarDataType.|
|48|ParameterDataPrototype|A ParameterDataPrototype represents a formalized generic piece of information that is typically immutable by the application software layer, but mutable by measurement and calibration tools.ParameterDataPrototype is used in various contexts and the specific context gives the otherwise genericParameterDataPrototype a dedicated semantics.|
|49|ApplicationArrayElement|Describes the properties of the elements of an application array data type.|
|50|ApplicationRecordElement|Describes the properties of one particular element of an application record data type.|
|51|DataPrototype|Base class for prototypical roles of any data type.|
|52|ApplicationCompositeElementDataPrototype|This class represents a data prototype which is aggregated within a composite application data type(record or array). It is introduced to provide a better distinction between target and context in instance Refs.|
|53|VariableDataPrototype|A VariableDataPrototype represents a formalized generic piece of information that is typically mutable by the application software layer. VariableDataPrototype is used in various contexts and the specific context gives the otherwise generic VariableDataPrototype a dedicated semantics.|
|54|RunnableEntityArgument|This meta-class represents the ability to provide specific information regarding the arguments to a RunnableEntity.|
|55|RunnableEntity|A RunnableEntity represents the smallest code-fragment that is provided by an AtomicSwComponent Type and are executed under control of the RTE. RunnableEntities are for instance set up to respond to data reception or operation invocation on a server.|
|56|SwcInternalBehavior|The SwcInternalBehavior of an AtomicSwComponentType describes the relevant aspects of the software-component with respect to the RTE, i.e. the RunnableEntities and the RTEEvents they respond to.|
|57|ExternalTriggeringPoint|If a RunnableEntity owns an ExternalTriggeringPoint it is entitled to raise an ExternalTriggerOccurred Event.|
|58|InternalTriggeringPoint|If a RunnableEntity owns an InternalTriggeringPoint it is entitled to trigger the execution of RunnableEntities of the corresponding software-component.|
|59|AbstractAccessPoint|Abstract class indicating an access point from an ExecutableEntity.|
|60|RteApiReturnValueProvisionEnum|This meta-class provides values to control how return values from RTE APIs are provided.|
|61|VariableAccess|The presence of a VariableAccess implies that a RunnableEntity needs access to a VariableData Prototype.The kind of access is specified by the role in which the class is used.|
|62|ParameterAccess|The presence of a ParameterAccess implies that a RunnableEntity needs access to a ParameterData Prototype|
|63|VariableAccessScopeEnum|This enumeration defines scopes for communication.|
|64|AutosarVariableRef|This class represents a reference to a variable within AUTOSAR which can be one of the following use cases:<br>localVariable:<br>• localVariable which is used as whole (e.g. InterRunnableVariable, inputValue for curve) autosarVariable:<br>• a variable provided via Port which is used as whole (e.g. dataAccesspoints)<br>• an element inside of a composite local variable typed by ApplicationDatatype (e.g. inputValue for a curve)<br>• an element inside of a composite variable provided via Port and typed by ApplicationDatatype (e.g. inputValue for a curve)autosarVariableInImplDatatype:<br>• an element inside of a composite local variable typed by ImplementationDatatype (e.g. nvramData mapping)<br>• an element inside of a composite variable provided via Port and typed by ImplementationDatatype(e.g. inputValue for a curve)|
|65|AutosarParameterRef|This class represents a reference to a parameter within AUTOSAR which can be one of the following use cases:<br>localParameter:<br>• localParameter which is used as whole (e.g. sharedAxis for curve)autosarVariable:<br>• a parameter provided via PortPrototype which is used as whole (e.g. parameterAccess)<br>• an element inside of a composite local parameter typed by ApplicationDatatype (e.g. sharedAxis for a curve)<br>• an element inside of a composite parameter provided via Port and typed by ApplicationDatatype (e.g.sharedAxis for a curve)autosarParameterInImplDatatype:<br>• an element inside of a composite local parameter typed by ImplementationDatatype<br>• an element inside of a composite parameter provided via PortPrototype and typed by Implementation Datatype|
|66|ArVariableInImplementationDataInstanceRef|This class represents the ability to navigate into a data element inside of an VariableDataPrototype which is typed by an ImplementationDatatype.<br>Note that it shall not be used if the target is the VariableDataPrototype itself (e.g. if its a primitive).<br>Note that this class follows the pattern of an InstanceRef but is not implemented based on the abstract classes because the ImplementationDataType isn’t either, especially because ImplementationDataType Element isn’t derived from AtpPrototype.|
|67|ArParameterInImplementationDataInstanceRef|This class represents the ability to navigate into an element inside of an ParameterDataPrototype typed by an ImplementationDatatype.<br>Note that it shall not be used if the target is the ParameterDataPrototype itself (e.g. if the target is a primitive data type).<br>Note that this class follows the pattern of an InstanceRef but is not implemented based on the abstract classes because the ImplementationDataType isn’t either, especially because ImplementationDataType Element (intentionally) isn’t derived from AtpPrototype.|
|68|PerInstanceMemory|Defines a ’C’ typed memory-block that needs to be available for each instance of the SW-component.This is typically only useful if supportsMultipleInstantiation is set to "true" or if the software-component defines NVRAM access via permanent blocks.|
|69|IncludedDataTypeSet|An includedDataTypeSet declares that a set of AutosarDataType is used by a basic software module or a software component for its implementation and the AutosarDataType becomes part of the contract.<br>This information is required if the AutosarDataType is not used for any DataPrototype owned by this software component or if the enumeration literals, lowerLimit and upperLimit constants shall be generated with a literalPrefix.<br>The optional literalPrefix is used to add a common prefix on enumeration literals, lowerLimit and upper Limit constants created by the RTE.|
|70|ModeAccessPoint|A ModeAccessPoint is required by a RunnableEntity owned by a Mode Manager or Mode User. Its semantics implies the ability to access the current mode (provided by the RTE) of a ModeDeclaration GroupPrototype’s ModeDeclarationGroup.|
|71|ModeSwitchPoint|A ModeSwitchPoint is required by a RunnableEntity owned a Mode Manager. Its semantics implies the ability to initiate a mode switch.|
|72|IncludedModeDeclarationGroupSet|An IncludedModeDeclarationGroupSet declares that a set of ModeDeclarationGroups used by the software component for its implementation and consequently these ModeDeclarationGroups become part of the contract.|
|73|RoleBasedPortAssignment|This class specifies an assignment of a role to a particular service port (RPortPrototype or PPortPrototype) of an AtomicSwComponentType. With this assignment, the role of the service port can be mapped to a specific ServiceNeeds element, so that a tool is able to create the correct connector.|
|74|SwcServiceDependency|Specialization of ServiceDependency in the context of an SwcInternalBehavior. It allows to associate ports, port groups and (in special cases) data defined for an atomic software component to a given ServiceNeeds element.|
|75|RoleBasedDataTypeAssignment|This class specifies an assignment of a role to a particular data type of a software component (or in the BswModuleBehavior of a module or cluster) in the context of an AUTOSAR Service.With this assignment, the role of the data type can be mapped to a specific ServiceNeeds element, so that a tool is able to create the correct access.|
|76|VariationPointProxy|The VariationPointProxy represents variation points of the C/C++ implementation. In case of bindingTime = compileTime the RTE provides defines which can be used for Pre Processor directives to implement compileTime variability|
|77|PortDefinedArgumentValue|A PortDefinedArgumentValue is passed to a RunnableEntity dealing with the ClientServerOperations provided by a given PortPrototype. Note that this is restricted to PPortPrototypes of a ClientServer Interface|
|78|SwcSupportedFeature|This meta-class represents a abstract base class for features that can be supported by a RunnableEntity.|
|79|CommunicationBufferLocking |The aggregation of this meta-class specifies that a RunnableEntity supports locked communication buffers supplied by the RTE. It is able to cope with the error RTE_E_COM_BUSY|
|80|DataTransformationErrorHandlingEnum|This enumeration defines different ways how a RunnableEntity shall handle transformer errors.|
|81|SupportBufferLockingEnum|This enumeration represents the ability to define the buffer locking behavior|
|82|AsynchronousServerCallResultPoint|If a RunnableEntity owns a AsynchronousServerCallResultPoint it is entitled to get the result of the referenced AsynchronousServerCallPoint. If it is associated with AsynchronousServerCallReturnsEvent,this RTEEvent notifies the completion of the required ClientServerOperation or a timeout. The occurrence of this event can either unblock a WaitPoint or can lead to the invocation of a RunnableEntity.|
|83|ServerCallPoint |If a RunnableEntity owns a ServerCallPoint it is entitled to invoke a particular ClientServerOperation of a specific RPortPrototype of the corresponding AtomicSwComponentType|
|84|SynchronousServerCallPoint|This means that the RunnableEntity is supposed to perform a blocking wait for a response from the server.|
|85|AsynchronousServerCallPoint|An AsynchronousServerCallPoint is used for asynchronous invocation of a ClientServerOperation.<br>IMPORTANT: a ServerCallPoint cannot be used concurrently. Once the client RunnableEntity has made the invocation, the ServerCallPoint cannot be used until the call returns (or an error occurs!) at which point the ServerCallPoint becomes available again.|
|86|WaitPoint|This defines a wait-point for which the RunnableEntity can wait.|
|87|TimingEvent|This event is used to start RunnableEntities that shall be executed periodically.|
|88|RTEEvent|Abstract base class for all RTE-related events.|
|89|AsynchronousServerCallReturnsEvent|This event is raised when an asynchronous server call is finished.|
|90|DataSendCompletedEvent|This event is raised when the referenced explicit data element has been sent or an error occurred.|
|91|DataWriteCompletedEvent|This event is raised when an implicit write access was successful or an error occurred.|
|92|DataReceivedEvent|This event is raised when the referenced data element is received.|
|93|DataReceiveErrorEvent|This event is raised when the Com layer detects and notifies an error concerning the reception of the referenced ValiableDataPrototype.|
|94|OperationInvokedEvent|This event is raised when the ClientServerOperation referenced in OperationInvokedEvent.operation shall be invoked.|
|95|BackgroundEvent|This event is used to start RunnableEntities that are supposed to be executed in the background.|
|96|ModeSwitchedAckEvent|This event is raised when the referenced ModeSwitchPoint has been processed or an error occurred.|
|97|ExternalTriggerOccurredEvent|This event is raised when the referenced Trigger has occurred.|
|98|InternalTriggerOccurredEvent|This event is raised when the referenced InternalTriggeringPoint has occurred.|
|99|InitEvent|This RTEEvent is supposed to be used for initialization purposes, i.e. for starting and restarting a partition.|
|100|TransformerHardErrorEvent|This event is raised when data are received which should trigger a Client/Server operation or an external Trigger but during transformation of the data a hard transformer error occurred.|
|101|OsTaskExecutionEvent|This RTEEvent is supposed to execute RunnableEntities which have to react on the execution of specific OsTasks.|
|102|SwcModeManagerErrorEvent|This event is raised when an error occurred during the handling of the referenced ModeDeclarationGroup Prototype.|
|103|SwcExclusiveAreaPolicy|Options how to generate the ExclusiveArea related APIs. If no SwcExclusiveAreaPolicy is specified for an ExclusiveArea the default values apply|
|104|HandleTerminationAndRestartEnum|Controls the behavior of an AtomicSwComponentType with respect to stop and restart.|
|105|SwcImplementation|This meta-class represents a specialization of the general Implementation meta-class with respect to the usage in application software.|
|106|PerInstanceMemorySize|Resources needed by the allocation of PerInstanceMemory for each SWC instance. Note that these resources are not covered by an ObjectFileSection, because they are supposed to be allocated by the RTE.|
|107|SensorActuatorSwComponentType|The SensorActuatorSwComponentType introduces the possibility to link from the software representation of a sensor/actuator to its hardware description provided by the ECU Resource Template.|
|108|ComplexDeviceDriverSwComponentType|The ComplexDeviceDriverSwComponentType is a special AtomicSwComponentType that has direct access to hardware on an ECU and which is therefore linked to a specific ECU or specific hardware.|
|109|SymbolProps|This meta-class represents the ability to attach with the symbol attribute a symbolic name that is conform to C language requirements to another meta-class.|
|110|PortGroup|Group of ports which share a common functionality.<br>Example: need specific network resources. This information shall be available on the VFB level in order to delegate it properly via compositions. When propagated into the ECU extract, this information is used as input for the configuration of Services like the Communication Manager.<br>A PortGroup is defined locally in a component (which can be a composition) and refers to the "outer"ports belonging to the group as well as to the "inner" groups which propagate this group into thecomponents which are part of a composition. A PortGroup within an atomic SWC cannot be linked to inner groups.|
|111|PortPrototype|Base class for the ports of an AUTOSAR software component.The aggregation of PortPrototypes is subject to variability with the purpose to support the conditional existence of ports.|
|112|RPortPrototype|ARObject, AbstractRequiredPortPrototype, AtpBlueprintable, AtpFeature, AtpPrototype, Identifiable,MultilanguageReferrable, PortPrototype, Referrable|
|113|PPortPrototype|ARObject, AbstractProvidedPortPrototype, AtpBlueprintable, AtpFeature, AtpPrototype, Identifiable,MultilanguageReferrable, PortPrototype, Referrable|
|114|AbstractProvidedPortPrototype|ARObject, AtpBlueprintable, AtpFeature, AtpPrototype, Identifiable, MultilanguageReferrable, PortPrototype, Referrable|
|115|AbstractRequiredPortPrototype|ARObject, AtpBlueprintable, AtpFeature, AtpPrototype, Identifiable, MultilanguageReferrable, PortPrototype, Referrable|
|116|PRPortPrototype|ARObject, AbstractProvidedPortPrototype, AbstractRequiredPortPrototype, AtpBlueprintable, AtpFeature, AtpPrototype, Identifiable, MultilanguageReferrable, PortPrototype, Referrable|
|117|InterpolationRoutineMappingSet|This meta-class specifies a set of interpolation routine mappings.<br>Tags:atp.recommendedPackage=InterpolationRoutineMappingSets|
|118|InterpolationRoutineMapping|This meta-class provides a mapping between one record layout and its matching interpolation routines.This allows to formally specify the semantics of the interpolation routines.The use case is such that the curves/Maps define an interpolation method. This mapping table specifies which interpolation routine implements methods for a particular record layout. Using this information, the implementer of a software-component can select the appropriate interpolation routine|
|119|InterpolationRoutine|This represents an interpolation routine taken to evaluate the contents of a curve or map against a specific input value.|
|120|CalibrationParameterValueSet|Specification of a constant that can be part of a package, i.e. it can be defined stand-alone.<br>Tags: atp.recommendedPackage=CalibrationParameterValueSets|
|121|CalibrationParameterValue|Specifies instance specific calibration parameter values used to initialize the memory objects implementing calibration parameters in the generated RTE code.<br>RTE generator will use the implInitValue to override the initial values specified for the DataPrototypes of a component type.<br>The applInitValue is used to exchange init values with the component vendor not publishing the transformation algorithm between ApplicationDataTypes and ImplementationDataTypes or defining an instance specific initialization of components which are only defined with ApplicationDataTypes.<br>Note: If both representations of init values are available these need to represent the same content.<br>Note further that in this case an explicit mapping of ValueSpecification is not implemented because calibration parameters are delivered back after the calibration phase.|
|122|SenderReceiverInterface|A sender/receiver interface declares a number of data elements to be sent and received. Tags:atp.recommendedPackage=PortInterfaces|
|123|InvalidationPolicy|Specifies whether the component can actively invalidate a particular dataElement. If no invalidationPolicy points to a dataElement this is considered to yield the identical result as if the handleInvalid attribute was set to dontInvalidate.|
|124|MetaDataItem|This meta-class represents a single meta-data item.|
|125|MetaDataItemSet|This meta-class represents the ability to define a set of meta-data items to be used in SenderReceiver Interfaces.|
|126|ClientServerInterface|A client/server interface declares a number of operations that can be invoked on a server by a client. Tags:atp.recommendedPackage=PortInterfaces|
|127|ClientServerOperation|An operation declared within the scope of a client/server interface.|
|128|ArgumentDataPrototype|An argument of an operation, much like a data element, but also carries direction information and is owned by a particular ClientServerOperation.|
|129|ServerArgumentImplPolicyEnum|Enumeration: useArgumentType, useVoid|
|130|TriggerInterface|A trigger interface declares a number of triggers that can be sent by an trigger source. Tags:atp.recommendedPackage=PortInterfaces|
|131|ModeSwitchInterface|A mode switch interface declares a ModeDeclarationGroupPrototype to be sent and received. Tags:atp.recommendedPackage=PortInterfaces|
|132|PortInterfaceMappingSet|Specifies a set of (one or more) PortInterfaceMappings. Tags:atp.recommendedPackage=PortInterfaceMappingSets|
|133|PortInterfaceMapping|Specifies one PortInterfaceMapping to support the connection of Ports typed by two different Port Interfaces with PortInterface elements having unequal names and/or unequal semantic (resolution or range)|
|134|VariableAndParameterInterfaceMapping|Defines the mapping of VariableDataPrototypes or ParameterDataPrototypes in context of two different SenderReceiverInterfaces, NvDataInterfaces or ParameterInterfaces.|
|135|DataPrototypeMapping|Defines the mapping of two particular VariableDataPrototypes, ParameterDataPrototypes or Argument DataPrototypes with non-equal shortNames, non-equal structure, and/or non-equal semantic (resolution or range) in context of two different Sender ReceiverInterface, NvDataInterface or ParameterInterface or Operations.|
|136|ClientServerInterfaceMapping|Defines the mapping of ClientServerOperations in context of two different ClientServerInterfaces|
|137|ClientServerOperationMapping|Defines the mapping of two particular ClientServerOperations in context of two different ClientServer Interfaces|
|138|ClientServerApplicationErrorMapping|This meta-class represents the ability to map ApplicationErrors onto each other.|
|139|ModeInterfaceMapping|Defines the mapping of ModeDeclarationGroupPrototypes in context of two different ModeInterfaces.|
|140|ModeDeclarationMappingSet|This meta-class implements a container for ModeDeclarationGroupMappings Tags:atp.recommendedPackage=PortInterfaceMappingSets|
|141|ModeDeclarationMapping|This meta-class implements a concrete mapping of two ModeDeclarations.|
|142|TriggerInterfaceMapping|Defines the mapping of unequal named Triggers in context of two different TriggerInterfaces.|
|143|SubElementMapping|This meta-class allows for the definition of mappings of elements of a composite data type.|
|144|SubElementRef|This meta-class provides the ability to reference elements of composite data type.|
|145|ImplementationDataTypeSubElementRef|This meta-class represents the specialization of SubElementMapping with respect to Implementation DataTypes.|
|146|ApplicationCompositeDataTypeSubElementRef|This meta-class represents the specialization of SubElementMapping with respect to Application CompositeDataTypes.|
|147|TextTableMapping|Defines the mapping of two DataPrototypes typed by AutosarDataTypes that refer to CompuMethods of category TEXTTABLE, SCALE_LINEAR_AND_TEXTTABLE or BITFIELD_TEXTTABLE.|
|148|MappingDirectionEnum|Specifies the conversion direction for which the mapping is applicable.|
|149|TextTableValuePair|Defines a pair of text values which are translated into each other.|
|150|DataTransformationKindEnum|This enumeration contributes to the definition of the scope of the DataTransformation.|
|151|HandleInvalidEnum|Strategies of handling the reception of invalidValue.|
|152|PPortComSpec|Communication attributes of a provided PortPrototype. This class will contain attributes that are valid for all kinds of provide ports, independent of client-server or sender-receiver communication patterns.|
|153|RPortComSpec|Communication attributes of a required PortPrototype. This class will contain attributes that are valid for all kinds of require-ports, independent of client-server or sender-receiver communication patterns.|
|154|ReceiverComSpec|Receiver-specific communication attributes (RPortPrototype typed by SenderReceiverInterface).|
|155|HandleOutOfRangeStatusEnum|This enumeration defines how the RTE handles values that are out of range.|
|156|QueuedReceiverComSpec|Communication attributes specific to queued receiving.|
|157|ReceptionComSpecProps|This meta-class defines a set of reception attributes which the application software is assumed to implement.|
|158|HandleTimeoutEnum|Enumeration: none, replace, replaceByTimeoutSubstitutionValue|
|159|QueuedSenderComSpec|Communication attributes specific to distribution of events (PPortPrototype, SenderReceiverInterface and dataElement carries an "event").|
|160|NonqueuedSenderComSpec|Communication attributes for non-queued sender/receiver communication (sender side)|
|161|TransmissionComSpecProps|This meta-class defines a set of transmission attributes which the application software is assumed to implement.|
|162|TransmissionAcknowledgementRequest|Requests transmission acknowledgement that data has been sent successfully. Success/failure is reported via a SendPoint of a RunnableEntity|
|163|HandleOutOfRangeEnum|This enumeration defines how the RTE handles values that are out of range|
|164|TransmissionModeDefinitionEnum|This meta-class defines possible settings for the transmission mode|
|165|CompositeNetworkRepresentation|This meta-class is used to define the network representation of leaf elements of composite application data types.|
|166|ClientComSpec|Client-specific communication attributes (RPortPrototype typed by ClientServerInterface).|
|167|ServerComSpec|Communication attributes for a server port (PPortPrototype and ClientServerInterface).|
|168|ModeSwitchedAckRequest|Requests acknowledgements that a mode switch has been proceeded successfully|
|169|ModeSwitchReceiverComSpec|Communication attributes of RPortPrototypes with respect to mode communication|
|170|ParameterProvideComSpec|"Communication" specification that applies to parameters on the provided side of a connection.|
|171|ParameterRequireComSpec|"Communication" specification that applies to parameters on the required side of a connection.|
|172|NvRequireComSpec|Communication attributes of RPortPrototypes with respect to Nv data communication on the required side.|
|173|NvProvideComSpec|Communication attributes of PPortPrototypes with respect to Nv data communication on the provided side.|
|174|TransformationComSpecProps|TransformationComSpecProps holds all the attributes for transformers that are port specific.|
|175|UserDefinedTransformationComSpecProps|The UserDefinedTransformationComSpecProps is used to specify port specific configuration properties for custom transformers.|
|176|SenderReceiverAnnotation|Annotation of the data elements in a port that realizes a sender/receiver interface.|
|177|SenderAnnotation|Annotation of a sender port, specifying properties of data elements that don't affect communication or generation of the RTE.|
|178|ReceiverAnnotation|Annotation of a receiver port, specifying properties of data elements that don't affect communication or generation of the RTE. The given attributes are requirements on the required data.|
|179|ProcessingKindEnum|Kind of processing which has been applied to a data element|
|180|DataLimitKindEnum|Indicates whether the data element carries a minimum or maximum value, thereby limiting the current range of another value.|
|181|ClientServerAnnotation|Annotation to a port regarding a certain Operation.|
|182|IoHwAbstractionServerAnnotation|The IoHwAbstractionServerAnnotation will only be used from a sensor- or an actuator component while interacting with the IoHwAbstraction layer. Note that the "server" in the name is not meant to restrict the usage to ClientServer Interfaces.|
|183|FilterDebouncingEnum|This enumeration defines possible values for the filter debouncing strategy.|
|184|PulseTestEnum|This element indicates to the connected Actuator Software component whether the data-element can be used to generate pulse test sequences using the IoHwAbstraction layer|
|185|ParameterPortAnnotation|Annotation to a port used for calibration regarding a certain ParameterDataPrototype.|
|186|ModePortAnnotation|Annotation to a port used for calibration regarding a certain ModeDeclarationGroupPrototype.|
|187|TriggerPortAnnotation|Annotation to a port used for calibration regarding a certain Trigger.|
|188|NvDataPortAnnotation|Annotation to a port regarding a certain VariableDataPrototype.|
|189|DelegatedPortAnnotation|Annotation to a "delegated port" to specify the Signal Fan In or Signal Fan Out inside the CompositionSwComponentType.|
|190|SignalFanEnum|Signal Fan inside the Composition Component Type.|
|191|EndToEndDescription|This meta-class contains information about end-to-end protection. The set of applicable attributes depends on the actual value of the category attribute of EndToEndProtection.|
|192|EndToEndProtectionSet|This represents a container for collection EndToEndProtectionInformation. Tags:atp.recommendedPackage=EndToEndProtectionSets|
|193|EndToEndProtection|This meta-class represents the ability to describe a particular end to end protection.|
|194|ConsistencyNeeds|This meta-class represents the ability to define requirements on the implicit communication behavior.|
|195|RunnableEntityGroup|This meta-class represents the ability to define a collection of RunnableEntities. The collection can be nested.|
|196|DataPrototypeGroup|This meta-class represents the ability to define a collection of DataPrototypes that are subject to the formal definition of implicit communication behavior. The definition of the collection can be nested.|
|197|ExternalTriggeringPointIdent|This meta-class has been created to introduce the ability to become referenced into the meta-class ExternalTriggeringPoint without breaking backwards compatibility|
|198|ModeAccessPointIdent|This meta-class has been created to introduce the ability to become referenced into the meta-class Mode AccessPoint without breaking backwards compatibility|
|199|BlueprintPolicy|This meta-class represents the ability to indicate whether blueprintable elements will be modifiable or not modifiable.|
|200|AtpBlueprintable|This meta-class represents the ability to be derived from a Blueprint.|
|201|AtpBluePrint|This meta-class represents the ability to act as a Blueprint.|
|202|AbstractImplementationDataType|This meta-class represents an abstract base class for different flavors of ImplementationDataType.|
|203|ArraySizeSemanticsEnum|Enumeration: fixedSize, variableSize - Controls how the information about the number of elements in an ApplicationArrayDataType is to be interpreted|
|204|ImplementationDataType|Describes a reusable data type on the implementation level. This will typically correspond to a typedef in C-code. Tags:atp.recommendedPackage=ImplementationDataTypes|
|205|AbstractImplementationDataTypeElement|This meta-class represents the ability to act as an abstract base class for specific derived meta-classes that support the modeling of ImplementationDataTypes for a particular language binding|
|206|ImplementationDataTypeElement|Declares a data object which is locally aggregated. Such an element can only be used within the scope where it is aggregated.|
|207|ArrayImplPolicyEnum|Enumeration: payloadAsArray, payloadAsPointerToArray - Configures the implementation of the payload part of an array.|
|208|InternalBehavior|Common base class(abstract) for the internal behavior of both software components and basic software modules/clusters|
|209|ExcutableEntity|Abstraction of executable code.|
|210|AbstractEvent|This meta-class represents the abstract ability to model an event that can be taken to implement application software or basic software in AUTOSAR.|
|211|ExecutableEntityActivationReason|This meta-class represents the ability to define the reason for the activation of the enclosing ExecutableEntity.|
|212|ExclusiveArea|Prevents an executable entity running in the area from being preempted|
|213|ExclusiveAreaNestingOrder|This meta-class represents the ability to define a nesting order of ExclusiveAreas.|
|214|ReentrancyLevelEnum|Specifies if and in which kinds of environments an entity is reentrant|
|215|ApiPrincipleEnum|This enumeration represents the ability to control the granularity of API generation|
|216|ImplementationProps|Defines a symbol to be used as either a complete replacement or a prefix when generating code artifacts.|
|217|Implementation|Description of an implementation a single software component or module.|
|218|Code|A generic code descriptor. The type of the code (source or object) is defined via the category attribute of the associated engineering object|
|219|ServiceNeeds|This expresses the abstract needs that a Software Component or Basic Software Module has on the configuration of an AUTOSAR Service.|
|220|VendorSpecificServiceNeeds|This represents the ability to define vendor-specific service needs.|
|221|RoleBasedDataAssignment|This class specifies an assignment of a role to a particular data object.|
|222|ServiceDependency|Collects all dependencies of a software module or component on an AUTOSAR Service.|
|223|SymbolicNameProps|Defines a symbol to be used as either a complete replacement or a prefix when generating code artifacts.|
|224|ServiceDiagnosticRelevanceEnum|This enumeration provides values to describe the diagnostic relevance of a SwcServiceDependency(specifically if the aggregated ServiceNeeds itself does not indicate a relevance for diagnostics).|
|225|ModeDeclaration|Declaration of one Mode. The name and semantics of a specific mode is not defined in the meta-model.|
|226|ModeDeclarationGroup|A collection of Mode Declarations. Also, the initial mode is explicitly identified. Tags:atp.recommendedPackage=ModeDeclarationGroups|
|227|ModeTransition|This meta-class represents the ability to describe possible ModeTransitions in the context of a Mode DeclarationGroup.|
|228|ModeErrorBehavior|This represents the ability to define the error behavior in the context of mode handling.|
|229|ModeActivationKind|Kind of mode switch condition used for activation of an event, as further described for each enumeration field.|
|230|ModeErrorReactionPolicyEnum|This represents the ability to specify the reaction on a mode error.|
|231|ModeDeclarationGroupPrototype|The ModeDeclarationGroupPrototype specifies a set of Modes (ModeDeclarationGroup) which is provided or required in the given context.|
|232|ModeRequestTypeMap|Specifies a mapping between a ModeDeclarationGroup and an ImplementationDataType.|
|233|ModeDeclarationGroupPrototypeMapping|Defines the mapping of two particular ModeDeclarationGroupPrototypes that are unequally named and/or require a reference to a ModeDeclarationMappingSet.|
|234|MemorySection|Provides a description of an abstract memory section used in the Implementation for code or data.|
|235|ConstantSpecification|Specification of a constant that can be part of a package, i.e. it can be defined stand-alone. Tags:atp.recommendedPackage=ConstantSpecifications|
|236|CompositeValueSpecification|This abstract meta-class acts a base class for ValueSpecifications that have a composite form.|
|237|ArrayValueSpecification|Specifies the values for an array.|
|238|RecordValueSpecification|Specifies the values for a record.|
|239|TextValueSpecification|The purpose of TextValueSpecification is to define the labels that correspond to enumeration values.|
|240|NumericalValueSpecification|A numerical ValueSpecification which is intended to be assigned to a Primitive data element.|
|241|ReferenceValueSpecification|Specifies a reference to a data prototype to be used as an initial value for a pointer in the software.|
|242|NotAvailableValueSpecification|This meta-class provides the ability to specify a ValueSpecification to state that the respective element is not available. Tags:atp.Status=draft|
|243|ConstantReference|Instead of defining this value inline, a constant is referenced.|
|244|ConstantSpecificationMapping|This meta-class is used to create an association of two ConstantSpecifications.|
|245|ConstantSpecificationMappingSet|This meta-class represents the ability to map two ConstantSpecifications to each others. Tags:atp.recommendedPackage=ConstantSpecificationMappingSets|
|246|ApplicationValueSpecification|This meta-class represents values for DataPrototypes typed by ApplicationDataTypes.|
|247|NumericalOrText|This meta-class represents the ability to yield either a numerical or a string.|
|248|ApplicationRuleBasedValueSpecification|This meta-class represents rule based values for DataPrototypes typed by ApplicationDataTypes.|
|249|RuleBasedAxisCont|This represents the values for the axis of a compound primitive (curve, map).|
|250|RuleBasedValueCont|This represents the values of a compound primitive or an array.|
|251|NumericalRuleBasedValueSpecification|This meta-class is used to support a rule-based initialization approach for data types with an array-nature(ImplementationDataType of category ARRAY).|
|252|RuleBasedValueSpecification|This meta-class is used to support a rule-based initialization approach for data types with an array-nature(ApplicationArrayDataType and ImplementationDataType of category ARRAY) or a compound Application PrimitiveDataType (which also boils down to an array-nature).|
|253|RuleArguments|This represents the arguments for a rule-based value specification.|
|254|CompositeRuleBasedValueSpecification|This meta-class represents rule-based values for DataPrototypes typed by composite AutosarDataTypes.|
|255|CompositeRuleBasedValueArgument|This meta-class has the ability to serve as the abstract base class for ValueSpecifications for compound primitive data types.|
|256|ValueSpecification|Base class for expressions leading to a value which can be used to initialize a data object.|
|257|AbstractRuleBasedValueSpecification|This represents an abstract base class for all rule-based value specifications.|
|258|Trigger|A trigger which is provided (i.e. released) or required (i.e. used to activate something) in the given context.|
|259|TriggerMapping|Defines the mapping of two particular unequally named Triggers in the given context.|
|260|DataFilter|Base class for data filters. The type of the filter is specified in attribute dataFilterType.|
|261|DataFilterTypeEnum|Enumeration: always, maskedNewDiffersMaskedOld, maskedNewDiffersX, maskedNewEqualsX, never, newIsOutside, newIsWithin, oneEveryN|
|262|BswInternalBehavior|Specifies the behavior of a BSW module or a BSW cluster w.r.t. the code entities visible by the BSW Scheduler.|
|263|DataTransformation|A DataTransformation represents a transformer chain. It is an ordered list of transformers.|
|264|TransformationTechnology|A TransformationTechnology is a transformer inside a transformer chain. Tags:xml.namePlural=TRANSFORMATION-TECHNOLOGIES|
|265|EndToEndTransformationComSpecProps|Specifies port specific configuration properties for EndToEnd transformer attributes.|
|266|E2EProfileCompatibilityProps|This meta-class collects settings for configuration of the E2E state machine. Tags:atp.recommendedPackage=E2EProfileCompatibilityPropsCollection|
|<span id="267"></span>267|ViewTokens|Primitive specifying tokens to specify a documentation view. Tags:xml.xsd.customType=VIEW-TOKENS|
|268|DocumentViewSelectable|Represents ability to be dedicated to particular audience/document view.|
|269|ChapterEnumBreak|This allows to specify the page break policy of a paginatable element.|
|270|KeepWithPreviousEnum|This enumerator specifies a page break policy by controlling blocks which shall be kept together.|
|271|Paginateable|Represents ability to control pagination policy when creating documents.|
|272|DocumentationBlock|Represents a documentation block made of basic text structure elements.|
|273|LEnum|This denotes the possible language designators according to the two letter code of ISO 693.|
|274|LanguageSpecific|Represents ability to denote language an object is applicable for.|
|275|LLongName|MixedContentForLongNames in one particular language.|
|276|LOverviewParagraph|MixedContentForOverviewParagraph in one particular language.|
|277|LPlainText|Represents plain string in one particular language.|
|278|WhitespaceControlled|Represents ability to control white-space handling in XML serialization.|
|279|Tt|Represents ability to express specific technical terms.|
|280|Superscript|Text rendered superscript/subscript depending on role. Tags:xml.xsd.customType=SUPSCRIPT|
|281|IndexEntry|Represents an index entry.|
|282|EmphasisText|Emphasized text with rendering attributes like color and font.|
|283|MixedContentForLongName|Model for titles/long-names allowing emphasis and index entries.|
|284|Br|Forces a line break (HTML-like functionality).|
|285|EEnum|This specifies the possible kinds of emphasis as proposal how to render it on paper or screen. Note that it would have been better to use plain, weak (italic), strong(bold), veryStrong (bolditalic) ... But users complained about this.|
|286|EEnumFont|This specifies the possible kind of fonts to be used for emphasis.|
|287|MultilanguageLongName|Long name in multiple languages.|
|288|MultiLanguageOverviewParagraph|Content of multilingual paragraph in overview item.|
|289|MultiLanguagePlainText|Multilingual plain text intended as paragraph.|
|290|MixedContentForOverviewParagraph|Text model of restricted paragraph within documentation.|
|291|MixedContentForPlainText|Plain text conceptually handled as mixed contents.|
|292|Annotation|Plain annotation without further formal data.|
|293|Modification|This property denotes the one particular change which was performed on the object. Tags:xml.sequenceOffset=20|
|294|DocRevision|This meta-class represents the ability to maintain information which relates to revision management of documents or objects.|
|295|AdminData|AdminData represents the ability to express administrative information for an element.This administration information is to be treated as meta-data such as revision id or state of the file. There are basically four kinds of meta-data<br>• The language and/or used languages.<br>• Revision information covering e.g. revision number, state, release date,changes. Note that this information can be given in general as well as related to a particular company.<br>• Document meta-data specific for a company|
|296|SdgCaption|This meta-class represents the caption of a special data group. This allows to have some parts of special data as identifiable.|
|297|SdgContents|This meta-class represents the possible contents of a special data group. It can be an arbitrary mix of references, of primitive special data and nested special data groups.|
|298|Sd|This class represents a primitive element in a special data group.|
|299|Sdf|This class represents a numerical value in a special data group which may be subject to variability.|
|300|Sdg|Sdg (SpecialDataGroup) is a generic model which can be used to keep arbitrary information which is not explicitly modeled in the meta-model.Sdg can have various contents as defined by sdgContentsType. Special Data should only be used moderately since all elements should be defined in the meta-model.Thereby SDG should be considered as a temporary solution when no explicit model is available. If an sdg Caption is available, it is possible to establish a reference to the sdg structure.|
|301|SwBaseType|This meta-class represents a base type used within ECU software.Tags: atp.recommendedPackage=BaseTypes|
|302|BaseTypeDefinition|This meta-class represents the ability to define a basetype|
|303|BaseTypeDirectDefinition|This BaseType is defined directly (as opposite to a derived BaseType).|
|304|BaseType|This abstract meta-class represents the ability to specify a platform dependent base type.|
|305|Compu|This meta-class represents the ability to express one particular computation.|
|306|CompuContent|This abstract meta-class represents the various definition means of a computation method.|
|307|CompuScale|This meta-class represents the ability to specify one segment of a segmented computation method.|
|308|CompuScales|This meta-class represents the ability to stepwise express a computation method.|
|309|CompuScaleContents|This abstract meta-class represents the content of one particular scale.|
|310|CompuRationalCoeffs|This meta-class represents the ability to express a rational function by specifying the coefficients of nominator and denominator.|
|311|CompuConst|This meta-class represents the fact that the value of a computation method scale is constant.|
|312|CompuScaleRationalFormula|This meta-class represents the fact that the computation in this scale is represented as rational term.|
|313|CompuScaleConstantContents|This meta-class represents the fact that a particular scale of the computation method is constant.|
|314|CompuNominatorDenominator|This class represents the ability to express a polynomial either as Nominator or as Denominator.|
|315|Unit|This is a physical measurement unit. All units that might be defined should stem from SI units. In order to convert one unit into another factor and offset are defined.<br>For the calculation from SI-unit to the defined unit the factor (factorSiToUnit ) and the offset (offsetSiToUnit ) are applied as follows:<br>x [{unit}] := y * [{siUnit}] * factorSiToUnit [[unit]/{siUnit}] + offsetSiToUnit [{unit}]<br>For the calculation from a unit to SI-unit the reciprocal of the factor (factorSiToUnit ) and the negation of the offset (offsetSiToUnit ) are applied.<br>y {siUnit} := (x*{unit} - offsetSiToUnit [{unit}]) / (factorSiToUnit [[unit]/{siUnit}]<br>Tags: atp.recommendedPackage=Units|
|316|PhysicalDimension|This class represents a physical dimension. If the physical dimension of two units is identical, then a conversion between them is possible. The conversion between units is related to the definition of the physical dimension.<br>Note that the equivalence of the exponents does not per se define the convertibility. For example Energy and Torque share the same exponents (Nm).<br>Please note further the value of an exponent does not necessarily have to be an integer number. It is also possible that the value yields a rational number, e.g. to compute the square root of a given physical quantity. In this case the exponent value would be a rational number where the numerator value is 1 and the denominator value is 2.<br>Tags: atp.recommendedPackage=PhysicalDimensions|
|317|PhysicalDimensionMappingSet|This class represents a container for a list of mappings between PhysicalDimensions.|
|318|PhysicalDimensionMapping|This class represents a specific mapping between two PhysicalDimensions.|
|319|UnitGroup|This meta-class represents the ability to specify a logical grouping of units.The category denotes the unit system that the referenced units are associated to.<br>In this way, e.g. country-specific unit systems (CATEGORY="COUNTRY") can be defined as well as specific unit systems for certain application domains.<br>In the same way a group of equivalent units, can be defined which are used in different countries, by setting CATEGORY="EQUIV_UNITS". KmPerHour and MilesPerHour could such be combined to one group named "vehicle_speed". The unit MeterPerSec would not belong to this group because it is normally not used for vehicle speed. But all of the mentioned units could be combined to one group named "speed".<br>Note that the UnitGroup does not ensure the physical compliance of the units. This is maintained by the physical dimension.<br>Tags: atp.recommendedPackage=UnitGroups|
|320|DataConstr|This meta-class represents the ability to specify constraints on data.<br>Tags: atp.recommendedPackage=DataConstrs|
|321|DataConstrRule|This meta-class represents the ability to express one specific data constraint rule.|
|322|PhysConstrs|This meta-class represents the ability to express physical constraints. Therefore it has (in opposite to InternalConstrs) a reference to a Unit.|
|323|InternalConstrs|This meta-class represents the ability to express internal constraints.|
|324|ScaleConstr|This meta-class represents the ability to specify constraints as a list of intervals (called scales).|
|325|ScaleConstrValidityEnum|Even if the physical value is outside the defined constraints, the internal value (i.e., the raw value stored in memory) remains unchanged. This enumeration is only used to indicate the validity of the physical value with respect to the constraints defined in the ScaleConstr.|
|326|MemoryAllocationKeywordPolicyType|Enumeration to specify the name pattern of the Memory Allocation Keyword.|
|327|MemorySectionType|Enumeration to specify the essential nature of the data which can be allocated in a common memory class by the means of the AUTOSAR Memory Mapping.|
|328|SwAddrMethod|Used to assign a common addressing method, e.g. common memory section, to data or code objects. These objects could actually live in different modules or components.|
|329|SwPointerTargetProps|This element defines, that the data object (which is specified by the aggregating element) contains a reference to another data object or to a function in the CPU code. This corresponds to a pointer in the C-language. The attributes of this element describe the category and the detailed properties of the target which is either a data description or a function signature.|
|330|SwBitRepresentation|Description of the structure of a bit variable: Comprises of the bitPosition in a memory object (e.g. sw HostVariable, which stands parallel to swBitRepresentation) and the numberOfBits. In this way, interrelated memory areas can be described. Non-related memory areas are not supported.|
|331|SwCalibrationAccessEnum|Determines the access rights to a data object w.r.t. measurement and calibration.|
|332|SwImplPolicyEnum|Specifies the implementation strategy with respect to consistency mechanisms of variables.|
|333|SwDataDependency|This element describes the interdependencies of data objects, e.g. variables and parameters. Use cases: • Calculate the value of a calibration parameter (by the MCD system) from the value(s) of other calibration parameters. • Virtual data - that means the data object is not directly in the ecu and this property describes how the "virtual variable" can be computed from the real ones (by the MCD system).|
|334|DisplayPresentationEnum|This meta-class represents the ability to provide values for controlling the presentation of data within measurement and calibration tools.|
|335|ValueList|This is a generic list of numerical values.|
|336|SwDataDefProps|This class is a collection of properties relevant for data objects under various aspects. One could consider this class as a "pattern of inheritance by aggregation". The properties can be applied to all objects of all classes in which SwDataDefProps is aggregated.<br>Note that not all of the attributes or associated elements are useful all of the time. Hence, the process definition (e.g. expressed with an OCL or a Document Control Instance MSR-DCI) has the task of implementing limitations.<br>SwDataDefProps covers various aspects:<br>• Structure of the data element for calibration use cases: is it a single value, a curve, or a map, but also the recordLayouts which specify how such elements are mapped/converted to the DataTypes in the programming language (or in AUTOSAR). This is mainly expressed by properties like swRecordLayout and swCalprmAxisSet<br>• Implementation aspects, mainly expressed by swImplPolicy, swVariableAccessImplPolicy, swAddrMethod, swPointerTagetProps, baseType, implementationDataType and additionalNativeTypeQualifier<br>• Access policy for the MCD system, mainly expressed by swCalibrationAccess<br>• Semantics of the data element, mainly expressed by compuMethod and/or unit, dataConstr, invalidValue<br>• Code generation policy provided by swRecordLayout<br>Tags: vh.latestBindingTime=codeGenerationTime|
|337|SwCalprmAxisSet|This element specifies the input parameter axes (abscissas) of parameters (and variables, if these are used adaptively).|
|338|SwCalprmAxis|This element specifies an individual input parameter axis (abscissa).|
|339|CalprmAxisCategoryEnum|This enum specifies the possible values of the category property within SwCalprmAxis.|
|340|SwCalprmAxisTypeProps|Base class for the type of the calibration axis. This provides the particular model of the specialization. If the specialization would be the directly from SwCalPrmAxis, the sequence of common properties and the specializes ones would be different.|
|341|SwAxisIndividual|This meta-class describes an axis integrated into a parameter (field etc.). The integration makes this individual to each parameter. The so-called grouped axis represents the counterpart to this. It is conceived as an independent parameter (see class SwAxisGrouped).|
|342|SwAxisGeneric|This meta-class defines a generic axis. In a generic axis the axispoints points are calculated in the ECU. The ECU is equipped with a fixed calculation algorithm. Parameters for the algorithm can be stored in the data component of the ECU. Therefore these parameters are specified in the data declaration, not in the calibration data.|
|343|SwAxisType|This meta-class represents a specific axis calculation strategy. No formal specification is given, due to the fact that it is possible to use arbitrary algorithms for calculating axis-points. Instead, the algorithm is described verbally but the parameters are specified formally with respect to their names and constraints.|
|344|SwGenericAxisParam|This meta-class describes a specific parameter of a generic axis. The name of the parameter is defined through a reference to a parameter type defined on a corresponding axis type. The value of the parameter is given here in case that it is not changeable during calibration. Example is shift / offset in a fixed axis.|
|345|SwGenericAxisParamType|This meta-class describes a generic axis parameter type, namely: <br>• Plausibility checks can be specified via dataConstr. <br>• Textual description (desc), as a formal description is not of any use, due to the large variety of possibilities. • If this parameter contains structures, these can be simulated through the recursive use of SwGenericAxisParamTypes.|
|346|SwAxisGrouped|An SwAxisGrouped is an axis which is shared between multiple calibration parameters.|
|347|SwCalprmRefProxy|Wrapper class for different kinds of references to a calibration parameter.|
|348|SwVariableRefProxy|Proxy class for several kinds of references to a variable.|
|349|SwRecordLayout|Defines how the data objects (variables, calibration parameters etc.) are to be stored in the ECU memory. As an example, this definition specifies the sequence of axis points in the ECU memory. Iterations through axis values are stored within the sub-elements swRecordLayoutGroup.|
|350|SwRecordLayoutV|This element specifies which values are stored for the current SwRecordLayoutGroup. If no baseType is present, the SwBaseType referenced initially in the parent SwRecordLayoutGroup is valid. The specification of swRecordLayoutVAxis gives the axis of the values which shall be stored in accordance with the current record layout SwRecordLayoutGroup.|
|351|SwRecordLayoutGroup|Specifies how a record layout is set up. Using SwRecordLayoutGroup it recursively models iterations through axis values. The subelement swRecordLayoutGroupContentType may reference other SwRecordLayouts, SwRecordLayoutVs and SwRecordLayoutGroups for the modeled record layout.|
|352|SwRecordLayoutGroupContent|This is the contents of a RecordLayout which is inserted for every iteration. Note that since this is atpMixed, multiple properties can be inserted for each iteration.|
|353|SwSystemconst|This element defines a system constant which serves an input to select a particular variation point. In particular a system constant serves as an operand of the binding function (swSyscond) in a Variation point. Note that the binding process can only happen if a value was assigned to to the referenced system constants.<br>Tags:atp.recommendedPackage=SwSystemconsts|
|354|SwValueCont|This metaclass represents the content of one particular SwInstance.|
|355|SwAxisCont|This represents the values for the axis of a compound primitive (curve, map). For standard and fix axes, SwAxisCont contains the values of the axis directly. The axis values of SwAxisCont with the category COM_AXIS, RES_AXIS are for display only. For editing and processing, only the values in the related GroupAxis are binding.|
|356|SwValues|This meta-class represents a list of values. These values can either be the input values of a curve (abscissa values) or the associated values (ordinate values). In case of multidimensional structures, the values are ordered such that the lowest index runs the fastest. In particular for maps and cuboids etc. the resulting long value list can be subsectioned using Value Group. But the processing needs to be done as if vg is not there. Note that numerical values and textual values should not be mixed.|
|357|ValueGroup|This element enables values to be grouped. It can be used to perform row and column-orientated groupings, so that these can be rendered properly e.g. as a table.|
|<span id="358"></span>358|comparator|Compares two real inputs and outputs true if they are equal.|
|359|DiscreteTimeIntegrator|Implements discrete-time integration with configurable gain, initial value, and sample time.|
|360|MultiInterger|Package defining constrained integer types for minimum value boundaries.|
|361|Interger01|Integer type constrained to values 0 or 1.|
|362|Interger0Unbound|Integer type with minimum value 0 (no upper bound).|
|363|Interger1Unbound|Integer type with minimum value 1 (no upper bound).|
|364|DataStoreMemory|Implements a global data storage location with initial value.|
|365|DataTypeConversion|Converts between real, integer, and boolean data types with scaling capability.|
|366|ConversionMode|Enumeration defining data conversion modes: RealToInt, IntToReal, BoolToInt, IntToBool.|
|367|PID_Clamped|PID with clamping anti-windup|
|<span id="368"></span>368|IRV|Inter Runnable Variable|
|369|RPORT|Require port|
|370|PPORT|Provide port |
