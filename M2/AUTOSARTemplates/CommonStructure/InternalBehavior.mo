within M2.AUTOSARTemplates.CommonStructure;
package InternalBehavior
  partial class InternalBehavior "Common base class(abstract) for the internal behavior of both software components and basic software modules/clusters"
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_constantMemory = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype constantMemory[n_constantMemory];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_constantValueMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecificationMappingSet constantValueMapping[n_constantValueMapping];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataTypeMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.DataTypeMappingSet dataTypeMapping[n_dataTypeMapping];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_exclusiveArea = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveArea exclusiveArea[n_exclusiveArea];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_exclusiveAreaNestingOrder = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveAreaNestingOrder exclusiveAreaNestingOrder[n_exclusiveAreaNestingOrder];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_staticMemory = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype staticMemory[n_staticMemory];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end InternalBehavior;
  partial class ExcutableEntity "Abstraction of executable code."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_activationReason = 0 annotation (Dialog(connectorSizing = true));
    ExecutableEntityActivationReason activationReason[n_activationReason] " Mult:*
  If the ExecutableEntity provides at least one activation Reason element the RTE resp. BSW Scheduler shall provide means to read the activation vector of this executable entity execution.If no activationReason 
  element is provided the feature of being able to determine the activating RTEEvent is disabled for this ExecutableEntity.";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_canEnter = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveArea canEnter[n_canEnter] "Mult * 
                                                                              This means that the executable entity can enter/leave the referenced exclusive area through explicit API calls.
                                                                              Stereotypes: atpSplitable; atpVariation
                                                                              Tags:
                                                                              atp.Splitkey=canEnter.exclusiveArea, canEnter.variation
                                                                              Point.shortLabel
                                                                              vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_exclusiveAreaNestingOrder = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveAreaNestingOrder exclusiveAreaNestingOrder[n_exclusiveAreaNestingOrder] "Mult *
                                                                                                                                         This represents the set of ExclusiveAreaNestingOrders recognized by this ExecutableEntity.";
    parameter M2.Utilities.MultiInterger.Interger01 n_minimumStartInterval = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue minimumStartInterval[n_minimumStartInterval] "Multi 0..1 
                                                                                  Specifies the time in seconds by which two consecutive starts of an ExecutableEntity are guaranteed to be separated";
    parameter M2.Utilities.MultiInterger.Interger01 n_reentrancyLevel = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ReentrancyLevelEnum reentrancyLevel[n_reentrancyLevel] "The reentrancy level of this ExecutableEntity. See the documentation of the enumeration type ReentrancyLevel Enum for details.
                                                                                                            Please note that nonReentrant interfaces can have also reentrant or multicoreReentrant implementations, and
                                                                                                            reentrant interfaces can also have multicoreReentrant implementations.";
    parameter M2.Utilities.MultiInterger.Interger01 n_runInside = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveArea runInside[n_runInside] "The executable entity runs completely inside the referenced exclusive area.
                                                                                              Stereotypes: atpSplitable; atpVariation
                                                                                              Tags:
                                                                                              atp.Splitkey=runsInside.exclusiveArea, runs Inside.variationPoint.shortLabel
                                                                                              vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger01 n_swAddrMethod = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.AuxillaryObjects.SwAddrMethod swAddrMethod[n_swAddrMethod] "Addressing method related to this code entity. Via an association to the same SwAddrMethod, it can be
                                                                                    specified that several code entities (even of different modules or components) shall be located in the same
                                                                                    memory without already specifying the memory section itself.";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ExcutableEntity;
  partial class AbstractEvent "This meta-class represents the abstract ability to model an event that can be taken to implement\napplication software or basic software in AUTOSAR."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_activationReasonRepresentation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExecutableEntityActivationReason activationReasonRepresentation[n_activationReasonRepresentation];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AbstractEvent;
  class ExecutableEntityActivationReason "This meta-class represents the ability to define the reason for the activation of the enclosing ExecutableEntity."
    extends M2.AUTOSARTemplates.CommonStructure.Implementation.ImplementationProps;
    parameter M2.Utilities.MultiInterger.Interger01 n_bitPosition = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.PositiveInteger bitPosition[n_bitPosition] "Mult0..1 
                                                                                                             This attribute allows for defining the position of the
                                                                                                              enclosing ExecutableEntityActivationReason in the
                                                                                                              activation vector.";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ExecutableEntityActivationReason;

  class ExclusiveArea "Prevents an executable entity running in the area from being preempted"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ExclusiveArea;
  class ExclusiveAreaNestingOrder "This meta-class represents the ability to define a nesting order of ExclusiveAreas. A nesting order (that may occur in the executable code) is formally defined to be able to analyze the resource locking behavior."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Referrable;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_exclusiveArea = 0 annotation (Dialog(connectorSizing = true));
    ExclusiveArea exclusiveArea[n_exclusiveArea] "(ordered) Multi * This represents a specific scenario of how Exclusive
                                  Areas can be used in terms of the nesting order ";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ExclusiveAreaNestingOrder;

  type ReentrancyLevelEnum = enumeration(multicoreReentrant  "Unlimited concurrent execution of this entity is possible, including preemption andparallel execution on multi core systems.", 
    nonReentrant  " Concurrent execution of this entity is not possible.", 
    singleCoreReentrant  "Pseudo-concurrent execution (i.e. preemption) of this entity is possible on single core systems.") "Specifies if and in which kinds of environments an entity is reentrant.";
  type ApiPrincipleEnum = enumeration(common, perExecutable) "This enumeration represents the ability to control the granularity of API generation.";
  annotation (Protection(access = Access.nonPackageDuplicate));
end InternalBehavior;