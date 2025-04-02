within M2.AUTOSARTemplates.SWComponentTemplate;
package ApplicationAttributes

  partial class SenderReceiverAnnotation "Annotation of the data elements in a port that\nrealizes a sender/receiver interface."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_computed = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype computed[n_computed];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype dataElement[n_dataElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_limitKind = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ApplicationAttributes.DataLimitKindEnum limitKind[n_limitKind];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_processingKind = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ApplicationAttributes.ProcessingKindEnum processingKind[n_processingKind];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SenderReceiverAnnotation;
  class SenderAnnotation "Annotation of a sender port, specifying properties of data
elements that don’t affect communication or\ngeneration of the RTE.\r"
    extends M2.AUTOSARTemplates.SWComponentTemplate.ApplicationAttributes.SenderReceiverAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_computed = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype computed[n_computed];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SenderAnnotation;
  class ReceiverAnnotation "Annotation of a receiver port, specifying properties of data elements 
that don’t affect communication or\ngeneration of the RTE. The given attributes are requirements on the required data.\r"

    extends M2.AUTOSARTemplates.SWComponentTemplate.ApplicationAttributes.SenderReceiverAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_signalAge = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.MultidimensionalTime.MultidimensionalTime signalAge[n_signalAge];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ReceiverAnnotation;

  type ProcessingKindEnum = enumeration(filtered, none, raw);

  type DataLimitKindEnum = enumeration(max, min, none);

  class ClientServerAnnotation "Annotation to a port regarding a certain Operation.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_operation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation operation[n_operation];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ClientServerAnnotation;
  class IoHwAbstractionServerAnnotation "The IoHwAbstractionServerAnnotation will only be used from a 
sensor- or an actuator component while\ninteracting with the IoHwAbstraction layer.\nNote that the \"server\" in the name of this meta-class is not meant to restrict the usage to ClientServer\nInterfaces"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_age = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.MultidimensionalTime.MultidimensionalTime age[n_age];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_argument = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ArgumentDataPrototype argument[n_argument];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_bswResolution = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype bswResolution[n_bswResolution];



    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype dataElement[n_dataElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_failureMonitoring = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Components.PortPrototype failureMonitoring[n_failureMonitoring];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_filteringDebouncing = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ApplicationAttributes.FilterDebouncingEnum filteringDebouncing[n_filteringDebouncing];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_pulseTest = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ApplicationAttributes.PulseTestEnum pulseTest[n_pulseTest];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_trigger = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger trigger[n_trigger];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end IoHwAbstractionServerAnnotation;

  type FilterDebouncingEnum = enumeration(debounceData, rawData, waitTimeDate);

  type PulseTestEnum = enumeration(disable, enable);


  class ParameterPortAnnotation "Annotation to a port used for calibration regarding a certain ParameterDataPrototype."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_parameter0 = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype parameter0[n_parameter0];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ParameterPortAnnotation;
  class ModePortAnnotation "Annotation to a port used for calibration regarding a certain ModeDeclarationGroupPrototype."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype modeGroup[n_modeGroup];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModePortAnnotation;
  class TriggerPortAnnotation "Annotation to a port used for calibration regarding a certain Trigger."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_trigger = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger trigger[n_trigger];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TriggerPortAnnotation;
  class NvDataPortAnnotation "Annotation to a port regarding a certain VariableDataPrototype."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_variable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype variable[n_variable];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NvDataPortAnnotation;
  class DelegatedPortAnnotation "Annotation to a \"delegated port\" to specify the Signal 
Fan In or Signal Fan Out inside the CompositionSw\nComponentType."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation.GeneralAnnotation;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_signalFan = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ApplicationAttributes.SignalFanEnum signalFan[n_signalFan];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DelegatedPortAnnotation;

  type SignalFanEnum = enumeration(nfold, single);
  annotation (Protection(access = Access.nonPackageDuplicate));
end ApplicationAttributes;