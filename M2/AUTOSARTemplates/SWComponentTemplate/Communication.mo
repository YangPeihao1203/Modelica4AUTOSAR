within M2.AUTOSARTemplates.SWComponentTemplate;
package Communication
  type HandleInvalidEnum = enumeration(dontInvalidate, externalReplacement, keep, replace);
  partial class PPortComSpec "Communication attributes of a provided PortPrototype. 
This class will contain attributes that are valid for\nall kinds of provide ports, 
independent of client-server or sender-receiver communication patterns."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PPortComSpec;
  class RPortComSpec "Communication attributes of a required PortPrototype. This class will
contain attributes that are valid for\nall kinds of require-ports, independent of 
client-server or sender-receiver communication patterns."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compositeNetworkRepresentation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.CompositeNetworkRepresentation compositeNetworkRepresentation[n_compositeNetworkRepresentation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype dataElement[n_dataElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_handleOutOfRange = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleOutOfRangeEnum handleOutOfRange[n_handleOutOfRange];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_handleOutOfRangeStatus = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleOutOfRangeStatusEnum handleOutOfRangeStatus[n_handleOutOfRangeStatus];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxDeltaCounterInit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.CompositeNetworkRepresentation maxDeltaCounterInit[n_maxDeltaCounterInit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxNoNewOrRepeatedData = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype maxNoNewOrRepeatedData[n_maxNoNewOrRepeatedData];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_networkRepresentation = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps networkRepresentation[n_networkRepresentation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_receptionProps = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.ReceptionComSpecProps receptionProps[n_receptionProps];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_replaceWith = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.VariableAccess replaceWith[n_replaceWith];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_syncCounterInit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype syncCounterInit[n_syncCounterInit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_transformationComSpecProps = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.TransformationComSpecProps transformationComSpecProps[n_transformationComSpecProps];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_usesEndToEndProtection = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.TransformationComSpecProps usesEndToEndProtection[n_usesEndToEndProtection];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RPortComSpec;
  partial class ReceiverComSpec "Receiver-specific communication attributes (RPortPrototype 
typed by SenderReceiverInterface)."

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.RPortComSpec;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ReceiverComSpec;

  type HandleOutOfRangeStatusEnum = enumeration(indicate, silent);

  class QueuedReceiverComSpec "Communication attributes specific to queued receiving."

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.ReceiverComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_queueLength = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype queueLength[n_queueLength];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end QueuedReceiverComSpec;
  class ReceptionComSpecProps "This meta-class defines a set of reception attributes 
which the application software is assumed to\nimplement."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataUpdatePeriod = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue dataUpdatePeriod[n_dataUpdatePeriod];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_timeout = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue timeout[n_timeout];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ReceptionComSpecProps;

  type HandleTimeoutEnum = enumeration(none, replace, replaceByTimeoutSubstitutionValue);

  class QueuedSenderComSpec "Communication attributes specific to distribution of events 
(PPortPrototype, SenderReceiverInterface and\ndataElement carries an \"event\")."

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.SenderComSpec;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end QueuedSenderComSpec;


  class NonqueuedSenderComSpec "Communication attributes for non-queued sender/receiver communication (sender side)"

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.SenderComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataFilter = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Filter.DataFilter dataFilter[n_dataFilter];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_initValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification initValue[n_initValue];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NonqueuedSenderComSpec;
  class TransmissionComSpecProps "This meta-class defines a set of transmission attributes
which the application software is assumed to\nimplement."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataUpdatePeriod = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue cdataUpdatePeriod[n_dataUpdatePeriod];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_minimumSendInterval = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue minimumSendInterval[n_minimumSendInterval];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_transmissionMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.TransmissionModeDefinitionEnum transmissionMode[n_transmissionMode];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TransmissionComSpecProps;
  class TransmissionAcknowledgementRequest "Requests transmission acknowledgement that data 
has been sent successfully. Success/failure is\nreported via a SendPoint of a RunnableEntity"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_timeout = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue timeout[n_timeout];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TransmissionAcknowledgementRequest;

  type HandleOutOfRangeEnum = enumeration(default, externalReplacement, ignore, invalid, none, saturate);

  type TransmissionModeDefinitionEnum = enumeration(cyclic, cyclicAndOnChange, triggered);

  class CompositeNetworkRepresentation "This meta-class is used to define the network
representation of leaf elements of composite application\ndata types."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_leafElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ApplicationCompositeElementDataPrototype leafElement[n_leafElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_networkRepresentation = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps networkRepresentation[n_networkRepresentation];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompositeNetworkRepresentation;


  class ClientComSpec "Client-specific communication attributes (RPortPrototype typed by ClientServerInterface)."
    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.RPortComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_endToEndCallResponseTimeout = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue endToEndCallResponseTimeout[n_endToEndCallResponseTimeout];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_operation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation operation[n_operation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_transformationComSpecProps = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.TransformationComSpecProps transformationComSpecProps[n_transformationComSpecProps];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ClientComSpec;
  class ServerComSpec "Communication attributes for a server port (PPortPrototype and ClientServerInterface)."

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.PPortComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_enhancedModeApi = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Filter.DataFilter enhancedModeApi[n_enhancedModeApi];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype modeGroup[n_modeGroup];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeSwitchedAck = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.ModeSwitchedAckRequest modeSwitchedAck[n_modeSwitchedAck];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_queueLength = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification queueLength[n_queueLength];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ServerComSpec;
  class ModeSwitchedAckRequest "Requests acknowledgements that a mode switch has been proceeded successfully"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_timeout = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.TimeValue timeout[n_timeout];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeSwitchedAckRequest;
  class ModeSwitchReceiverComSpec "Communication attributes of RPortPrototypes with respect to mode communication"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_enhancedModeApi = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.CompositeNetworkRepresentation enhancedModeApi[n_enhancedModeApi];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype modeGroup[n_modeGroup];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_supportsAsynchronousModeSwitch = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleOutOfRangeEnum supportsAsynchronousModeSwitch[n_supportsAsynchronousModeSwitch];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeSwitchReceiverComSpec;
  class ParameterProvideComSpec "\"Communication\" specification that applies to parameters on the provided side of a connection."

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.PPortComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_initValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification initValue[n_initValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_parameter0 = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype parameter0[n_parameter0];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ParameterProvideComSpec;
  class ParameterRequireComSpec "\"Communication\" specification that applies to parameters on the required side of a connection.\r"

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.PPortComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_initValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification initValue[n_initValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_parameter0 = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype parameter0[n_parameter0];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ParameterRequireComSpec;
  class NvRequireComSpec "Communication attributes of RPortPrototypes with respect to Nv data communication on the required\nside.\r"

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.PPortComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_initValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification initValue[n_initValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_variable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype variable[n_variable];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NvRequireComSpec;
  class NvProvideComSpec "Communication attributes of PPortPrototypes with respect to Nv data communication on the provided\nside.\r"

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.PPortComSpec;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_ramBlockInitValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification ramBlockInitValue[n_ramBlockInitValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_romBlockInitValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification romBlockInitValue[n_romBlockInitValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_variable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype variable[n_variable];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NvProvideComSpec;
  partial class TransformationComSpecProps "TransformationComSpecProps holds all the attributes for transformers that are port specific."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Describable;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TransformationComSpecProps;
  class UserDefinedTransformationComSpecProps "The UserDefinedTransformationComSpecProps is used to specify port specific configuration properties\nfor custom transformers.\r"

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.TransformationComSpecProps;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end UserDefinedTransformationComSpecProps;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Communication;