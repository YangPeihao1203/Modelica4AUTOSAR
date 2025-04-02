within M2.AUTOSARTemplates.SystemTemplate;
package Transformer

  class DataTransformation "A DataTransformation represents a transformer chain. It is an ordered list of transformers.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataTransformationKind = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.Transformer.DataTransformationKindEnum dataTransformationKind[n_dataTransformationKind];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_executeDespiteDataUnavailability = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.AutosarParameterRef executeDespiteDataUnavailability[n_executeDespiteDataUnavailability];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_transformerChain = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.Transformer.TransformationTechnology transformerChain[n_transformerChain];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DataTransformation;
  class TransformationTechnology "A TransformationTechnology is a transformer inside a transformer 
chain.\nTags:xml.namePlural=TRANSFORMATION-TECHNOLOGIES\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_bufferProperties = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype bufferProperties[n_bufferProperties];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_hasInternalState = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecificationMappingSet hasInternalState[n_hasInternalState];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_needsOriginalData = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.DataTypeMappingSet needsOriginalData[n_needsOriginalData];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_protocol = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String protocol[n_protocol];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_transformationDescription = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveAreaNestingOrder transformationDescription[n_transformationDescription];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_transformerClass = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype transformerClass[n_transformerClass];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_version = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String version[n_version];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TransformationTechnology;
  class EndToEndTransformationComSpecProps "The class EndToEndTransformationIComSpecProps specifies 
port specific configuration properties for\nEndToEnd transformer attributes."

    extends M2.AUTOSARTemplates.SWComponentTemplate.Communication.TransformationComSpecProps;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_clearFromValidToInvalid = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype clearFromValidToInvalid[n_clearFromValidToInvalid];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_disableEndToEndCheck = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecificationMappingSet disableEndToEndCheck[n_disableEndToEndCheck];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_disableEndToEndStateMachine = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.DataTypeMappingSet disableEndToEndStateMachine[n_disableEndToEndStateMachine];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_e2eProfileCompatibilityProps = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.Transformer.E2EProfileCompatibilityProps e2eProfileCompatibilityProps[n_e2eProfileCompatibilityProps];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxDeltaCounter = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveAreaNestingOrder maxDeltaCounter[n_maxDeltaCounter];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxErrorStateInit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype maxErrorStateInit[n_maxErrorStateInit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxErrorStateInvalid = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String maxErrorStateInvalid[n_maxErrorStateInvalid];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxNoNewOrRepeatedData = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ParameterDataPrototype maxNoNewOrRepeatedData[n_maxNoNewOrRepeatedData];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_minOkStateInit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecificationMappingSet minOkStateInit[n_minOkStateInit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_minOkStateInvalid = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.DataTypeMappingSet minOkStateInvalid[n_minOkStateInvalid];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_minOkStateValid = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.Transformer.E2EProfileCompatibilityProps minOkStateValid[n_minOkStateValid];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_syncCounterInit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExclusiveAreaNestingOrder syncCounterInit[n_syncCounterInit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_windowSizeInit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype windowSizeInit[n_windowSizeInit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_windowSizeInvalid = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String windowSizeInvalid[n_windowSizeInvalid];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_windowSizeValid = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String windowSizeValid[n_windowSizeValid];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end EndToEndTransformationComSpecProps;
  class E2EProfileCompatibilityProps "This meta-class collects settings for configuration of 
the E2E state machine.\nTags:atp.recommendedPackage=E2EProfileCompatibilityPropsCollection"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_transitToInvalidExtended = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.Transformer.TransformationTechnology transitToInvalidExtended[n_transitToInvalidExtended];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end E2EProfileCompatibilityProps;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Transformer;