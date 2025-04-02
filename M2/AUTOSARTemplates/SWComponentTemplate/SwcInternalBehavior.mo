within M2.AUTOSARTemplates.SWComponentTemplate;
package SwcInternalBehavior
  package RunnableEntity_pkg
    class RunnableEntityArgument "This meta-class represents the ability to provide specific information 
regarding the arguments to a RunnableEntity"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_symbol = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.CIdentifier symbol[n_symbol] " Mult. 0..1
              This represents the symbol to be generated into the
              actual signature on the level of the C programming language";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end RunnableEntityArgument;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RunnableEntity_pkg;

  model RunnableEntity "A RunnableEntity represents the smallest code-fragment that is provided by an AtomicSwComponent Type 
    and are executed under control of the RTE. RunnableEntities are for instance set up to respond to data reception or operation invocation on a server."
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExcutableEntity;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_argument = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity_pkg.RunnableEntityArgument argument[n_argument] "Multi:* (ordered)
                                                                                                                  This represents the formal definition of a an argument to a RunnableEntity.";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_asynchronousServerCallResultPoint = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ServerCall.AsynchronousServerCallResultPoint asynchronousServerCallResultPoint[n_asynchronousServerCallResultPoint] "Multi:The server call result point admits a runnable to fetch the
                                                                                                                                              result of an asynchronous server call. The aggregation of AsynchronousServerCallResultPoint is subject to variability with the purpose to support the
                                                                                                                                              conditional existence of client server PortPrototypes and the variant existence of server call result points in the implementation.
                                                                                                                                              Stereotypes: atpSplitable; atpVariation
                                                                                                                                              Tags:
                                                                                                                                              atp.Splitkey=asynchronousServerCallResultPoint.short
                                                                                                                                              Name, asynchronousServerCallResultPoint.variation
                                                                                                                                              Point.shortLabel
                                                                                                                                              vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger01 n_canBeInvokedConcurrently = 0 annotation (Dialog(connectorSizing = true));
    Boolean canBeInvokedConcurrently[n_canBeInvokedConcurrently] "Multi:0..1 If the value of this attribute is set to 'true' the enclosing RunnableEntity can be invoked concurrently (even for one instance of the corresponding AtomicSwComponent Type). This implies that it is the responsibility of the implementation of the RunnableEntity to take care of this form of concurrency.";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataReadAccess = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess dataReadAccess[n_dataReadAccess] "Multi:*
                                                                                                            RunnableEntity has implicit read access to dataElement of a sender-receiver PortPrototype or nv data of a nv data PortPrototype.
                                                                                                            The aggregation of dataReadAccess is subject to variability with the purpose to support the conditional existence of sender receiver ports or the variant existence of dataReadAccess in the implementation.
                                                                                                            Stereotypes: atpSplitable; atpVariation
                                                                                                            Tags:
                                                                                                            atp.Splitkey=dataReadAccess.shortName, dataRead
                                                                                                            Access.variationPoint.shortLabel
                                                                                                            vh.latestBindingTime=preCompileTime";

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataReceivePointByArgument = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess dataReceivePointByArgument[n_dataReceivePointByArgument] "Multi:*
                                                                                                                      RunnableEntity has explicit read access to dataElement of a sender-receiver PortPrototype or nv data of a nv data PortPrototype. The result is passed back to the application by means of an argument in the function signature.
                                                                                                                      The aggregation of dataReceivePointByArgument is subject to variability with the purpose to support the conditional existence of sender receiver PortPrototype or the variant existence of data receive points in the
                                                                                                                      implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=dataReceivePointByArgument.shortName,
                                                                                                                      dataReceivePointByArgument.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataReceivePointByValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess dataReceivePointByValue[n_dataReceivePointByValue] "Multi:*
                                                                                                                      RunnableEntity has explicit read access to dataElement of a sender-receiver PortPrototype or nv data of a nv data
                                                                                                                      PortPrototype.
                                                                                                                      The result is passed back to the application by means of the return value. The aggregation of dataReceivePointByValue is subject to variability with the purpose to support
                                                                                                                      the conditional existence of sender receiver ports or the variant existence of data receive points in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=dataReceivePointByValue.shortName, data
                                                                                                                      ReceivePointByValue.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataSendPoint = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess dataSendPoint[n_dataSendPoint] "Multi:*
                                                                                                                      RunnableEntity has explicit write access to dataElement
                                                                                                                      of a sender-receiver PortPrototype or nv data of a nv data PortPrototype.
                                                                                                                      The aggregation of dataSendPoint is subject to variability with the purpose to support the conditional existence of
                                                                                                                      sender receiver PortPrototype or the variant existence of data send points in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=dataSendPoint.shortName, dataSend
                                                                                                                      Point.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataWriteAccess = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess dataWriteAccess[n_dataWriteAccess] "Multi:*
                                                                                                                      RunnableEntity has explicit write access to dataElement
                                                                                                                      of a sender-receiver PortPrototype or nv data of a nv data PortPrototype.
                                                                                                                      The aggregation of dataSendPoint is subject to variability with the purpose to support the conditional existence of
                                                                                                                      sender receiver PortPrototype or the variant existence of data send points in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=dataSendPoint.shortName, dataSend Point.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_externalTriggeringPoint = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.Trigger.ExternalTriggeringPoint externalTriggeringPoint[n_externalTriggeringPoint] "Multi:*
                                                                                                                      The aggregation of ExternalTriggeringPoint is subject to variability with the purpose to support the conditional
                                                                                                                      existence of trigger ports or the variant existence of external triggering points in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=externalTriggeringPoint.ident.shortName,
                                                                                                                      externalTriggeringPoint.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_internalTriggeringPoint = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.Trigger.InternalTriggeringPoint internalTriggeringPoint[n_internalTriggeringPoint] "Multi:*
                                                                                                                      The aggregation of InternalTriggeringPoint is subject to
                                                                                                                      variability with the purpose to support the variant existence of internal triggering points in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=internalTriggeringPoint.shortName, internal
                                                                                                                      TriggeringPoint.variationPoint.shortLabel
 
                                                                                                                     vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeAccessPoint = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ModeDeclarationGroup.ModeAccessPoint modeAccessPoint[n_modeAccessPoint] "Multi:*
                                                                                                                      The runnable has a mode access point. The aggregation
                                                                                                                      of ModeAccessPoint is subject to variability with the purpose to support the conditional existence of mode ports or the variant existence of mode access points in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=modeAccessPoint.ident.shortName, mode
                                                                                                                      AccessPoint.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeSwitchPoint = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ModeDeclarationGroup.ModeSwitchPoint modeSwitchPoint[n_modeSwitchPoint] "Multi:*
                                                                                                                      The runnable has a mode switch point. The aggregation of ModeSwitchPoint is subject to variability with the
                                                                                                                      purpose to support the conditional existence of mode ports or the variant existence of mode switch points in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=modeSwitchPoint.shortName, modeSwitch
                                                                                                                      Point.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_parameterAccess = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ModeDeclarationGroup.ModeAccessPoint parameterAccess[n_parameterAccess] "Multi:*
                                                                                                                      The presence of a ParameterAccess implies that a
                                                                                                                      RunnableEntity needs read only access to a Parameter DataPrototype which may either be local or within a Port Prototype.
                                                                                                                      The aggregation of ParameterAccess is subject to variability with the purpose to support the conditional
                                                                                                                      existence of parameter ports and component local parameters as well as the variant existence of Parameter
                                                                                                                      Access (points) in the implementation.
                                                                                                                      Stereotypes: atpSplitable; atpVariation
                                                                                                                      Tags:
                                                                                                                      atp.Splitkey=parameterAccess.shortName, parameter
                                                                                                                      Access.variationPoint.shortLabel
                                                                                                                      vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_readLocalVariable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess readLocalVariable[n_readLocalVariable] "Multi:*The presence of a readLocalVariable implies that a
                                                                                                              RunnableEntity needs read access to a VariableData Prototype in the role of implicitInterRunnableVariable or explicitInterRunnableVariable.
                                                                                                              The aggregation of readLocalVariable is subject to variability with the purpose to support the conditional
                                                                                                              existence of implicitInterRunnableVariable and explicit InterRunnableVariable or the variant existence of read
                                                                                                              LocalVariable (points) in the implementation.
                                                                                                              Stereotypes: atpSplitable; atpVariation
                                                                                                              Tags:
                                                                                                              atp.Splitkey=readLocalVariable.shortName, readLocal
                                                                                                              Variable.variationPoint.shortLabel
                                                                                                              vh.latestBindingTime=preCompileTime";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_serverCallPoint = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess serverCallPoint[n_serverCallPoint] "
                                                                                                               Multi:*
                                                                                                             The RunnableEntity has a ServerCallPoint. The aggregation of ServerCallPoint is subject to variability with
                                                                                                              the purpose to support the conditional existence of client server PortPrototypes or the variant existence of server call points in the implementation.
                                                                                                              Stereotypes: atpSplitable; atpVariation
                                                                                                              Tags:
                                                                                                              atp.Splitkey=serverCallPoint.shortName, serverCall
                                                                                                              Point.variationPoint.shortLabel
                                                                                                              vh.latestBindingTime=preCompileTime";

    parameter M2.Utilities.MultiInterger.Interger01 n_symbol = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.CIdentifier symbol[n_symbol] "
                                                                                                               Multi:0..1
                                                                                                             The symbol describing this RunnableEntity’s entry point. This is considered the API of the RunnableEntity and is
                                                                                                              required during the RTE contract phase.";
     //20230702注释byyang
    //parameter M2.Utilities.MultiInterger.Interger0Unbound n_waitPoint = 0 annotation (Dialog(connectorSizing = true));
    //M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents.WaitPoint waitPoint[n_waitPoint] "
    //                                                                                                             Multi:*
     //                                                                                                           The WaitPoint associated with the RunnableEntity.";

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_writtenLocalVariable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess writtenLocalVariable[n_writtenLocalVariable] "
                                                                                                               Multi:*
                                                                                                              The presence of a writtenLocalVariable implies that a
                                                                                                              RunnableEntity needs write access to a VariableData Prototype in the role of implicitInterRunnableVariable or explicitInterRunnableVariable.
                                                                                                              The aggregation of writtenLocalVariable is subject to variability with the purpose to support the conditional existence of implicitInterRunnableVariable and explicit InterRunnableVariable or the variant existence of written LocalVariable (points) in the implementation.
                                                                                                              Stereotypes: atpSplitable; atpVariation
                                                                                                              Tags:
                                                                                                              atp.Splitkey=writtenLocalVariable.shortName, written
                                                                                                              LocalVariable.variationPoint.shortLabel
                                                                                                              vh.latestBindingTime=preCompileTime";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RunnableEntity;
  class SwcInternalBehavior "The SwcInternalBehavior of an AtomicSwComponentType describes the relevant aspects of the 
  software-component with respect to the RTE,i.e. the RunnableEntities and the RTEEvents they respond to"
    extends M2.AUTOSARTemplates.CommonStructure.InternalBehavior.InternalBehavior;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arTypedPerInstanceMemory = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype arTypedPerInstanceMemory[n_arTypedPerInstanceMemory];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_event = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents.RTEEvent event[n_event];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_exclusiveAreaPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.SwcExclusiveAreaPolicy exclusiveAreaPolicy[n_exclusiveAreaPolicy];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_explicitInterRunnableVariable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype explicitInterRunnableVariable[n_explicitInterRunnableVariable];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_handleTerminationAndRestart = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.HandleTerminationAndRestartEnum handleTerminationAndRestart[n_handleTerminationAndRestart];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_implicitInterRunnableVariable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype implicitInterRunnableVariable[n_implicitInterRunnableVariable];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_includedDataTypeSet = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.IncludedDataTypes.IncludedDataTypeSet includedDataTypeSet[n_includedDataTypeSet];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_includedModeDeclarationGroupSet = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ModeDeclarationGroup.IncludedModeDeclarationGroupSet includedModeDeclarationGroupSet[n_includedModeDeclarationGroupSet];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_instantiationDataDefProps = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.InstantiationDataDefProps.InstantiationDataDefProps instantiationDataDefProps[n_instantiationDataDefProps];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_perInstanceMemory = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.PerInstanceMemory.PerInstanceMemory perInstanceMemory[n_perInstanceMemory];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_perInstanceParameter = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype perInstanceParameter[n_perInstanceParameter];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_portAPIOption = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.PortAPIOptions.PortAPIOption portAPIOption[n_portAPIOption];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_runnable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity runnable[n_runnable];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_serviceDependency = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ServiceMapping.SwcServiceDependency serviceDependency[n_serviceDependency];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_sharedParameter = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype sharedParameter[n_sharedParameter];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_supportsMultipleInstantiation = 0 annotation (Dialog(connectorSizing = true));

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_variationPointProxy = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.VariantHandling.VariationPointProxy variationPointProxy[n_variationPointProxy];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwcInternalBehavior;
  package Trigger
    class ExternalTriggeringPoint "If a RunnableEntity owns an ExternalTriggeringPoint it is entitled to raise an ExternalTriggerOccurred
Event."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_ident = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.RPTScenario.ExternalTriggeringPointIdent ident[n_ident];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_trigger = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger trigger[n_trigger];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ExternalTriggeringPoint;
    class InternalTriggeringPoint "If a RunnableEntity owns an InternalTriggeringPoint it is entitled to trigger the execution of Runnable
Entities of the corresponding software-component."
      //extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.Trigger.InternalTriggeringPoint;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_swImplPolicy = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.DataDefProperties.SwImplPolicyEnum swImplPolicy[n_swImplPolicy];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end InternalTriggeringPoint;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Trigger;

  package AccessCount

    partial class AbstractAccessPoint "Abstract class indicating an access point from an ExecutableEntity"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_returnValueProvision = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.RteApiReturnValueProvisionEnum returnValueProvision[n_returnValueProvision];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AbstractAccessPoint;
    type RteApiReturnValueProvisionEnum = enumeration(noReturnValueProvided, returnValueProvided) "This meta-class provides values to control how return values from RTE APIs are provided.";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AccessCount;
  package DataElements
    class VariableAccess "The presence of a VariableAccess implies that a RunnableEntity needs access to a VariableData
Prototype.The kind of access is specified by the role in which the class is used."
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.AbstractAccessPoint;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_accessedVariable = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.AutosarVariableRef accessedVariable[n_accessedVariable];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_scope = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccessScopeEnum scope[n_scope];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end VariableAccess;
    class ParameterAccess "The presence of a ParameterAccess implies that a RunnableEntity needs access to a ParameterData
Prototype"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.AbstractAccessPoint;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_accessedParameter = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.AutosarParameterRef accessedParameter[n_accessedParameter];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swDataDefProps[n_swDataDefProps];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ParameterAccess;
    type VariableAccessScopeEnum = enumeration(communicationInterEcu, communicationIntraPartition, interPartitionIntraEcu) "This enumeration defines scopes for communication.";
    class AutosarVariableRef "This class represents a reference to a variable within AUTOSAR which can be one of the following 
use\ncases:\nlocalVariable:\n• localVariable which is used as whole (e.g. InterRunnableVariable, inputValue for
curve)\nautosarVariable:\n• a variable provided via Port which is used as whole (e.g. dataAccesspoints)\n• an element inside 
of a composite local variable typed by ApplicationDatatype (e.g. inputValue for\na curve)\n• an element inside of a composite
variable provided via Port and typed by ApplicationDatatype\n(e.g. inputValue for a curve)\nautosarVariableInImplDatatype:\n• 
an element inside of a composite local variable typed by ImplementationDatatype (e.g. nvram\nData mapping)\n• an element inside
of a composite variable provided via Port and typed by Implementation\nDatatype (e.g. inputValue for a curve)"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_autosarVariable = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.DataPrototype autosarVariable[n_autosarVariable];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_autosarVariableInImplDatatype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.ArVariableInImplementationDataInstanceRef autosarVariableInImplDatatype[n_autosarVariableInImplDatatype];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_localVariable = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype localVariable[n_localVariable];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AutosarVariableRef;

    class AutosarParameterRef "This class represents a reference to a parameter within AUTOSAR which can be one of 
the following use\ncases:\nlocalParameter:\n• localParameter which is used as whole (e.g. sharedAxis for curve)
\nautosarVariable:\n• a parameter provided via PortPrototype which is used as whole (e.g. parameterAccess)\n• 
an element inside of a composite local parameter typed by ApplicationDatatype (e.g. sharedAxis\nfor a curve)\n• 
an element inside of a composite parameter provided via Port and typed by ApplicationDatatype\n(e.g. sharedAxis
for a curve)\nautosarParameterInImplDatatype:\n• an element inside of a composite local parameter typed by 
ImplementationDatatype\n• an element inside of a composite parameter provided via PortPrototype and typed by\nImplementationDatatype"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_autosarParameter = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.DataPrototype autosarParameter[n_autosarParameter];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_localParameter = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.DataPrototype localParameter[n_localParameter];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AutosarParameterRef;
    class ArVariableInImplementationDataInstanceRef "This class represents the ability to navigate into
a data element inside of an VariableDataPrototype which\nis typed by an ImplementationDatatype.\nNote
that it shall not be used if the target is the VariableDataPrototype itself (e.g. if its a primitive).
\nNote that this class follows the pattern of an InstanceRef but is not implemented based on the 
abstract\nclasses because the ImplementationDataType isn’t either, especially because ImplementationDataType\nElement isn’t derived from AtpPrototype."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_contextDataPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataTypeElement contextDataPrototype[n_contextDataPrototype];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_portPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Components.PortPrototype portPrototype[n_portPrototype];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_rootVariableDataPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype rootVariableDataPrototype[n_rootVariableDataPrototype];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_targetDataPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataTypeElement targetDataPrototype[n_targetDataPrototype];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ArVariableInImplementationDataInstanceRef;
    class ArParameterInImplementationDataInstanceRef "This class represents the ability to navigate into
an element inside of an ParameterDataPrototype typed\nby an ImplementationDatatype.\nNote that it
shall not be used if the target is the ParameterDataPrototype itself (e.g. if the target is a\nprimitive 
data type).\nNote that this class follows the pattern of an InstanceRef but is not implemented based on 
the abstract\nclasses because the ImplementationDataType isn’t either, especially because 
ImplementationDataType\nElement (intentionally) isn’t derived from AtpPrototype"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_contextDataPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataTypeElement contextDataPrototype[n_contextDataPrototype];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_portPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Components.PortPrototype portPrototype[n_portPrototype];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_rootVariableDataPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype rootVariableDataPrototype[n_rootVariableDataPrototype];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_targetDataPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataTypeElement targetDataPrototype[n_targetDataPrototype];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ArParameterInImplementationDataInstanceRef;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DataElements;
  package InstantiationDataDefProps
    annotation (Protection(access = Access.nonPackageDuplicate));
  end InstantiationDataDefProps;
  package PerInstanceMemory

    class PerInstanceMemory "Defines a ’C’ typed memory-block that needs to be available for each instance of the SW-component.\nThis is typically only useful if supportsMultipleInstantiation is set to \"true\" or if the software-component\ndefines NVRAM access via permanent blocks"
      extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
      extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_initValue = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String initValue[n_initValue];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swDataDefProps[n_swDataDefProps];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_type = 0 annotation (Dialog(connectorSizing = true));

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_typeDefinition = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String typeDefinition[n_typeDefinition];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end PerInstanceMemory;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PerInstanceMemory;
  package IncludedDataTypes

    class IncludedDataTypeSet "An includedDataTypeSet declares that a set of AutosarDataType is used by a basic software module or a\nsoftware component for its implementation and the AutosarDataType becomes part of the contract.\nThis information is required if the AutosarDataType is not used for any DataPrototype owned by this\nsoftware component or if the enumeration literals, lowerLimit and upperLimit constants shall be\ngenerated with a literalPrefix.\nThe optional literalPrefix is used to add a common prefix on enumeration literals, lowerLimit and upper\nLimit constants created by the RTE"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataType = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.AutosarDataType dataType[n_dataType];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_literalPrefix = 0 annotation (Dialog(connectorSizing = true));
      annotation (Protection(access = Access.nonPackageDuplicate));
    end IncludedDataTypeSet;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end IncludedDataTypes;
  package ModeDeclarationGroup
    class ModeAccessPoint "A ModeAccessPoint is required by a RunnableEntity owned by a Mode Manager or Mode User. Its\nsemantics implies the ability to access the current mode (provided by the RTE) of a ModeDeclaration\nGroupPrototype’s ModeDeclarationGroup.\r"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_ident = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.RPTScenario.ModeAccessPointIdent ident[n_ident];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype modeGroup[n_modeGroup];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ModeAccessPoint;
    class ModeSwitchPoint "A ModeSwitchPoint is required by a RunnableEntity owned a Mode Manager. Its semantics implies the\nability to initiate a mode switch"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.AbstractAccessPoint;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype modeGroup[n_modeGroup];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ModeSwitchPoint;
    class IncludedModeDeclarationGroupSet "An IncludedModeDeclarationGroupSet declares that a set of ModeDeclarationGroups used by the\nsoftware component for its implementation and consequently these ModeDeclarationGroups become\npart of the contract."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeDeclarationGroup = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroup modeDeclarationGroup[n_modeDeclarationGroup];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_prefix = 0 annotation (Dialog(connectorSizing = true));
      annotation (Protection(access = Access.nonPackageDuplicate));
    end IncludedModeDeclarationGroupSet;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeDeclarationGroup;
  package ServiceMapping

    class RoleBasedPortAssignment "This class specifies an assignment of a role to a particular service port (RPortPrototype or PPort\nPrototype) of an AtomicSwComponentType. With this assignment, the role of the service port can be\nmapped to a specific ServiceNeeds element, so that a tool is able to create the correct connector."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_portPrototype = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Components.PortPrototype portPrototype[n_portPrototype];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_role = 0 annotation (Dialog(connectorSizing = true));
      annotation (Protection(access = Access.nonPackageDuplicate));
    end RoleBasedPortAssignment;
    class SwcServiceDependency "Specialization of ServiceDependency in the context of an SwcInternalBehavior. It allows to associate\nports, port groups and (in special cases) data defined for an atomic software component to a given\nServiceNeeds element."
      extends M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.ServiceDependency;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_assignedData = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.RoleBasedDataAssignment assignedData[n_assignedData];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_assignedPort = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ServiceMapping.RoleBasedPortAssignment assignedPort[n_assignedPort];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_representedPortGroup = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Components.PortGroup representedPortGroup[n_representedPortGroup];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_serviceNeeds = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.ServiceNeeds serviceNeeds[n_serviceNeeds];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end SwcServiceDependency;
    class RoleBasedDataTypeAssignment "This class specifies an assignment of a role to a particular data type of a software component (or in the\nBswModuleBehavior of a module or cluster) in the context of an AUTOSAR Service.\nWith this assignment, the role of the data type can be mapped to a specific ServiceNeeds element, so\nthat a tool is able to create the correct access"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_role = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Components.PortPrototype role[n_role];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_usedImplementationDataType = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ImplementationDataType usedImplementationDataType[n_usedImplementationDataType];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end RoleBasedDataTypeAssignment;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ServiceMapping;
  package VariantHandling

    class VariationPointProxy "The VariationPointProxy represents variation points of the C/C++ implementation. In case of bindingTime\n= compileTime the RTE provides defines which can be used for Pre Processor directives to implement\ncompileTime variability."
      extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_conditionAccess = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.VariantHandling.ConditionByFormula conditionAccess[n_conditionAccess];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_implementationDataType = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataType implementationDataType[n_implementationDataType];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_postBuildValueAccess = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.VariantHandling.PostBuildVariantCriterion postBuildValueAccess[n_postBuildValueAccess];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_postBuildVariantCondition = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.VariantHandling.PostBuildVariantCondition postBuildVariantCondition[n_postBuildVariantCondition];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_valueAccess = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.VariantHandling.AttributeValueVariationPoints.AttributeValueVariationPoint valueAccess[n_valueAccess];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end VariationPointProxy;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end VariantHandling;
  package PortAPIOptions

    class PortDefinedArgumentValue "A PortDefinedArgumentValue is passed to a RunnableEntity dealing with the ClientServerOperations\nprovided by a given PortPrototype. Note that this is restricted to PPortPrototypes of a ClientServer\nInterface"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_value = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification value[n_value];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_valueType = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ImplementationDataType valueType[n_valueType];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end PortDefinedArgumentValue;
    partial class SwcSupportedFeature "This meta-class represents a abstract base class for features that can be supported by a RunnableEntity."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end SwcSupportedFeature;

    class CommunicationBufferLocking "The aggregation of this meta-class specifies that a RunnableEntity supports locked communication\nbuffers supplied by the RTE. It is able to cope with the error RTE_E_COM_BUSY"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.PortAPIOptions.SwcSupportedFeature;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_supportBufferLocking = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.PortAPIOptions.SupportBufferLockingEnum supportBufferLocking[n_supportBufferLocking];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end CommunicationBufferLocking;
    type DataTransformationErrorHandlingEnum = enumeration(noTransformerErrorHandling, transformerErrorHandling) "This enumeration defines different ways how a RunnableEntity shall handle transformer errors.";
    type SupportBufferLockingEnum = enumeration(doesNotSupportBufferLocking, supportsBufferLocking) "This enumeration represents the ability to define the buffer locking behavior";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PortAPIOptions;
  package ServerCall

    class AsynchronousServerCallResultPoint "If a RunnableEntity owns a AsynchronousServerCallResultPoint it is entitled to get the result of the
referenced AsynchronousServerCallPoint. If it is associated with AsynchronousServerCallReturnsEvent,
this RTEEvent notifies the completion of the required ClientServerOperation or a timeout. The
occurrence of this event can either unblock a WaitPoint or can lead to the invocation of a RunnableEntity."
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.AbstractAccessPoint;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_asynchronousServerCallPoint = 0 annotation (Dialog(connectorSizing = true));
      //20230712 注释by杨培豪，避免死循环
      // M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ServerCall.AsynchronousServerCallResultPoint asynchronousServerCallPoint[n_asynchronousServerCallPoint];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AsynchronousServerCallResultPoint;
    partial class ServerCallPoint "If a RunnableEntity owns a ServerCallPoint it is entitled to invoke a particular ClientServerOperation of a
specific RPortPrototype of the corresponding AtomicSwComponentType"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.AbstractAccessPoint;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_operation = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation operation[n_operation];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_timeout = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue timeout[n_timeout];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ServerCallPoint;
    class SynchronousServerCallPoint "This means that the RunnableEntity is supposed to perform a blocking wait for a response from the\nserver.\r"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.AbstractAccessPoint;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_calledFromWithinExclusiveArea = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveArea calledFromWithinExclusiveArea[n_calledFromWithinExclusiveArea];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end SynchronousServerCallPoint;
    class AsynchronousServerCallPoint "An AsynchronousServerCallPoint is used for asynchronous invocation of a ClientServerOperation.\nIMPORTANT: a ServerCallPoint cannot be used concurrently. Once the client RunnableEntity has made\nthe invocation, the ServerCallPoint cannot be used until the call returns (or an error occurs!) at which\npoint the ServerCallPoint becomes available again"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.AccessCount.AbstractAccessPoint;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AsynchronousServerCallPoint;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ServerCall;
  package RTEEvents

    class WaitPoint "This defines a wait-point for which the RunnableEntity can wait"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_timeout = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue timeout[n_timeout];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_trigger = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents.RTEEvent trigger[n_trigger];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end WaitPoint;
    class TimingEvent "This event is used to start RunnableEntities that shall be executed periodically"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_offset = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue offset[n_offset];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_period = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue period[n_period];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end TimingEvent;
    partial class RTEEvent "Abstract base class for all RTE-related events\r"
      extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
      extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_disabledMode = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration disabledMode[n_disabledMode];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_startOnEvent = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity startOnEvent[n_startOnEvent];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end RTEEvent;
    class AsynchronousServerCallReturnsEvent "This event is raised when an asynchronous server call is finished"
      extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
      extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_eventSource = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ServerCall.AsynchronousServerCallResultPoint eventSource[n_eventSource];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AsynchronousServerCallReturnsEvent;
    class DataSendCompletedEvent "This event is raised when the referenced explicit data element has been sent or an error occurred"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_eventSource = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess eventSource[n_eventSource];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataSendCompletedEvent;

    class DataWriteCompletedEvent "This event is raised when an implicit write access was successful or an error occurred"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_eventSource = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess eventSource[n_eventSource];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataWriteCompletedEvent;
    class DataReceivedEvent "This event is raised when the referenced data element is received"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_data = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype data[n_data];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataReceivedEvent;
    class DataReceiveErrorEvent "This event is raised when the Com layer detects and notifies an error concerning the reception of the\nreferenced ValiableDataPrototype"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_data = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype data[n_data];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataReceiveErrorEvent;
    class OperationInvokedEvent "This event is raised when the ClientServerOperation referenced in OperationInvokedEvent.operation\nshall be invoked."
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_operation = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation operation[n_operation];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end OperationInvokedEvent;
    class BackgroundEvent "This event is used to start RunnableEntities that are supposed to be executed in the background"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_activation = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeActivationKind activation[n_activation];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_mode = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration mode[n_mode];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end BackgroundEvent;
    class ModeSwitchedAckEvent "This event is raised when the referenced ModeSwitchPoint has been processed or an error occurred."
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_eventSource = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ModeDeclarationGroup.ModeSwitchPoint eventSource[n_eventSource];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ModeSwitchedAckEvent;
    class ExternalTriggerOccurredEvent "This event is raised when the referenced Trigger has occurred"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_trigger = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger trigger[n_trigger];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ExternalTriggerOccurredEvent;
    class InternalTriggerOccurredEvent "This event is raised when the referenced InternalTriggeringPoint has occurred"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_eventSource = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.Trigger.InternalTriggeringPoint eventSource[n_eventSource];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end InternalTriggerOccurredEvent;
    class InitEvent "This RTEEvent is supposed to be used for initialization purposes, i.e. for starting and restarting a\npartition. It is not guaranteed that all RunnableEntities referenced by this InitEvent are executed before\nthe ’regular’ RunnableEntities are executed for the first time. The execution order depends on the task\nmapping."
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end InitEvent;

    class TransformerHardErrorEvent "This event is raised when data are received which should trigger a Client/Server operation or an external\nTrigger but during transformation of the data a hard transformer error occurred.\r"
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_operation = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation operation[n_operation];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_requiredTrigger = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger requiredTrigger[n_requiredTrigger];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end TransformerHardErrorEvent;
    class OsTaskExecutionEvent "This RTEEvent is supposed to execute RunnableEntities which have to react on the execution of specific\nOsTasks. Therefore, this event is unconditionally raised whenever the OsTask on which it is mapped is\nexecuted. The main use case for this event is scheduling of Runnables of Complex Drivers which have to\nreact on task executions."
      extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RTEEvents;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end OsTaskExecutionEvent;



    class SwcModeManagerErrorEvent "This event is raised when an error occurred during the handling of the referenced ModeDeclarationGroup\nPrototype.\r"
      extends M2.AUTOSARTemplates.CommonStructure.InternalBehavior.AbstractEvent;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype modeGroup[n_modeGroup];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end SwcModeManagerErrorEvent;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RTEEvents;
  class SwcExclusiveAreaPolicy "Options how to generate the ExclusiveArea related APIs. If no SwcExclusiveAreaPolicy is specified for\nan ExclusiveArea the default values apply"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_apiPrinciple = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ApiPrincipleEnum.apiPrinciple apiPrinciple[n_apiPrinciple];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_exclusiveArea = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveArea exclusiveArea[n_exclusiveArea];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwcExclusiveAreaPolicy;
  type HandleTerminationAndRestartEnum = enumeration(canBeTerminated, canBeTerminatedAndRestarted, noSupport) "Controls the behavior of an AtomicSwComponentType with respect to stop and restart.";
  annotation (Protection(access = Access.nonPackageDuplicate));
end SwcInternalBehavior;