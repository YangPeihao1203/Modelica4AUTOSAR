within M2.AUTOSARTemplates.SWComponentTemplate;
package PortInterface

  class SenderReceiverInterface "A sender/receiver interface declares a number of data elements 
to be sent and received.\nTags:atp.recommendedPackage=PortInterfaces\r"
    extends M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.DataInterface;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype dataElement[n_dataElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_invalidationPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.InvalidationPolicy invalidationPolicy[n_invalidationPolicy];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_metaDataItemSet = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.MetaDataItemSet metaDataItemSet[n_metaDataItemSet];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SenderReceiverInterface;
  class InvalidationPolicy "Specifies whether the component can actively invalidate a particular dataElement.
\nIf no invalidationPolicy points to a dataElement this is considered to yield the identical result as if the\nhandleInvalid attribute was set to dontInvalidate.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype dataElement[n_dataElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_handleInvalid = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleInvalidEnum handleInvalid[n_handleInvalid];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end InvalidationPolicy;
  class MetaDataItem "This meta-class represents a single meta-data item."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    //20230712 注释by yang
    //parameter M2.Utilities.MultiInterger.Interger0Unbound n_length = 0 annotation (Dialog(connectorSizing = true));
    //M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ApiPrincipleEnum.apiPrinciple length[n_length];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_metaDataItemType = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.TextValueSpecification metaDataItemType[n_metaDataItemType];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end MetaDataItem;
  class MetaDataItemSet "This meta-class represents the ability to define a set of meta-data items to be used in SenderReceiver\nInterfaces.\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype dataElement[n_dataElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_metaDataItemType = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.MetaDataItem metaDataItemType[n_metaDataItemType];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end MetaDataItemSet;
  class ClientServerInterface "A client/server interface declares a number of operations that 
can be invoked on a server by a client.\nTags:atp.recommendedPackage=PortInterfaces"
    extends M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.PortInterface;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_operation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation operation[n_operation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_possibleError = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ApplicationError possibleError[n_possibleError];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ClientServerInterface;
  class ClientServerOperation "An operation declared within the scope of a client/server interface.\r"
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_argument = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ArgumentDataPrototype argument[n_argument];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_diagArgIntegrity = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ApplicationError diagArgIntegrity[n_diagArgIntegrity];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_possibleError = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ApplicationError possibleError[n_possibleError];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ClientServerOperation;
  class ArgumentDataPrototype "An argument of an operation, much like a data element, but also 
carries direction information and is\nowned by a particular ClientServerOperation."
    extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_direction = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.ArgumentDirectionEnum direction[n_direction];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_serverArgumentImplPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ServerArgumentImplPolicyEnum serverArgumentImplPolicy[n_serverArgumentImplPolicy];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ArgumentDataPrototype;
  type ServerArgumentImplPolicyEnum = enumeration(useArgumentType, useVoid);
  class TriggerInterface "A trigger interface declares a number of triggers that can be sent by an 
trigger source.\nTags:atp.recommendedPackage=PortInterfaces\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_trigger = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger trigger[n_trigger];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TriggerInterface;
  class ModeSwitchInterface "A mode switch interface declares a ModeDeclarationGroupPrototype
to be sent and received.\nTags:atp.recommendedPackage=PortInterfaces\r"
    extends M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.PortInterface;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype modeGroup[n_modeGroup];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeSwitchInterface;
  class PortInterfaceMappingSet "Specifies a set of (one or more) PortInterfaceMappings.
\nTags:atp.recommendedPackage=PortInterfaceMappingSets\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_portInterfaceMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.PortInterfaceMapping portInterfaceMapping[n_portInterfaceMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PortInterfaceMappingSet;
  partial class PortInterfaceMapping "Specifies one PortInterfaceMapping to support the
connection of Ports typed by two different Port\nInterfaces with PortInterface 
elements having unequal names and/or unequal semantic (resolution or\nrange)"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PortInterfaceMapping;
  class VariableAndParameterInterfaceMapping "Defines the mapping of VariableDataPrototypes or
ParameterDataPrototypes in context of two different\nSenderReceiverInterfaces, NvDataInterfaces or ParameterInterfaces.\r"

    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.DataPrototypeMapping dataMapping[n_dataMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end VariableAndParameterInterfaceMapping;
  class DataPrototypeMapping "Defines the mapping of two particular VariableDataPrototypes,
ParameterDataPrototypes or Argument\nDataPrototypes with non-equal shortNames, non-equal 
structure (specific condition is described by\n[constr_1187]), and/or non-equal semantic 
(resolution or range) in context of two different Sender\nReceiverInterface, NvDataInterface
or ParameterInterface or Operations.\nIf the semantic is unequal, the following rules apply:
The textTableMapping is only applicable if the\nreferred DataPrototypes are typed by 
AutosarDataType referring to CompuMethods of category\nTEXTTABLE, SCALE_LINEAR_AND_TEXTTABLE 
or BITFIELD_TEXTTABLE.\nIn the case that the DataPrototypes are typed by AutosarDataType
either referring to CompuMethods of\ncategory LINEAR, IDENTICAL or referring to no CompuMethod 
(which is similar as IDENTICAL) the\nlinear conversion factor is calculated out of the 
factorSiToUnit and offsetSiToUnit attributes of the referred\nUnits and the
CompuRationalCoeffs of a compuInternalToPhys of the referred CompuMethods.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstDataPrototype = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype firstDataPrototype[n_firstDataPrototype];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstToSecondDataTransformation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.Transformer.DataTransformation firstToSecondDataTransformation[n_firstToSecondDataTransformation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondDataPrototype = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes secondDataPrototype[n_secondDataPrototype];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondToFirstDataTransformation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.ransformer.DataTransformation secondToFirstDataTransformation[n_secondToFirstDataTransformation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_subElementMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.SubElementMapping subElementMapping[n_subElementMapping];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_textTableMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.TextTableMapping textTableMapping[n_textTableMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DataPrototypeMapping;
  class ClientServerInterfaceMapping "Defines the mapping of ClientServerOperations in context of two different ClientServerInterfaces"

    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_errorMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerInterfaceMapping errorMapping[n_errorMapping];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_operationMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperationMapping operationMapping[n_operationMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ClientServerInterfaceMapping;
  class ClientServerOperationMapping "Defines the mapping of two particular ClientServerOperations in context of two different ClientServer\nInterfaces"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_argumentMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.DataPrototypeMapping argumentMapping[n_argumentMapping];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstOperation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation firstOperation[n_firstOperation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstToSecondDataTransformation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.Transformer.DataTransformation firstToSecondDataTransformation[n_firstToSecondDataTransformation];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondOperation = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ClientServerOperation secondOperation[n_secondOperation];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ClientServerOperationMapping;
  class ClientServerApplicationErrorMapping "This meta-class represents the ability 
to map ApplicationErrors onto each other.\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstApplicationError = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ApplicationError firstApplicationError[n_firstApplicationError];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondApplicationError = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ApplicationError secondApplicationError[n_secondApplicationError];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ClientServerApplicationErrorMapping;
  class ModeInterfaceMapping "Defines the mapping of ModeDeclarationGroupPrototypes
in context of two different ModeInterfaces."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototypeMapping modeMapping[n_modeMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeInterfaceMapping;
  class ModeDeclarationMappingSet "This meta-class implements a container for
ModeDeclarationGroupMappings\nTags:atp.recommendedPackage=PortInterfaceMappingSets"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeDeclarationMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ModeDeclarationMapping modeDeclarationMapping[n_modeDeclarationMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeDeclarationMappingSet;
  class ModeDeclarationMapping "This meta-class implements a concrete mapping of two ModeDeclarations."
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration firstMode[n_firstMode];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration secondMode[n_secondMode];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeDeclarationMapping;
  class TriggerInterfaceMapping "Defines the mapping of unequal named Triggers in context of two 
different TriggerInterfaces."
    extends M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.PortInterfaceMapping;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_triggerMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.TriggerMapping triggerMapping[n_triggerMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TriggerInterfaceMapping;



  class SubElementMapping "This meta-class allows for the definition of mappings 
of elements of a composite data type.\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.SubElementRef firstElement[n_firstElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.SubElementRef secondElement[n_secondElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_textTableMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.TextTableMapping textTableMapping[n_textTableMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SubElementMapping;
  partial class SubElementRef "This meta-class provides the ability to reference elements of composite data type."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SubElementRef;
  class ImplementationDataTypeSubElementRef "This meta-class represents the specialization 
of SubElementMapping with respect to Implementation\nDataTypes.\r"
    extends M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.SubElementRef;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_implementationDataTypeElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.ArVariableInImplementationDataInstanceRef implementationDataTypeElement[n_implementationDataTypeElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_parameterImplementationDataTypeElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.ArParameterInImplementationDataInstanceRef parameterImplementationDataTypeElement[n_parameterImplementationDataTypeElement];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ImplementationDataTypeSubElementRef;
  class ApplicationCompositeDataTypeSubElementRef "This meta-class represents the 
specialization of SubElementMapping with respect to Application\nCompositeDataTypes."
    extends M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.SubElementRef;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_applicationCompositeElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ApplicationCompositeElementDataPrototype applicationCompositeElement[n_applicationCompositeElement];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ApplicationCompositeDataTypeSubElementRef;
  class TextTableMapping "Defines the mapping of two DataPrototypes typed by AutosarDataTypes that
refer to CompuMethods of\ncategory TEXTTABLE, SCALE_LINEAR_AND_TEXTTABLE or BITFIELD_TEXTTABLE.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_bitfieldTextTableMaskFirst = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration bitfieldTextTableMaskFirst[n_bitfieldTextTableMaskFirst];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_bitfieldTextTableMaskSecond = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ModeDeclarationMappingSet bitfieldTextTableMaskSecond[n_bitfieldTextTableMaskSecond];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_identicalMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype identicalMapping[n_identicalMapping];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_mappingDirection = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.MappingDirectionEnum mappingDirection[n_mappingDirection];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_valuePair = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.TextTableValuePair valuePair[n_valuePair];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TextTableMapping;

  type MappingDirectionEnum = enumeration(bidirectional, firstToSecond, secondToFirst);

  class TextTableValuePair "Defines a pair of text values which are translated into each other."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration firstValue[n_firstValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ModeDeclarationMappingSet secondValue[n_secondValue];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TextTableValuePair;

  type DataTransformationKindEnum = enumeration(asymmetricFromByteArray, asymmetricToByteArray, symmetric);
  annotation (Protection(access = Access.nonPackageDuplicate));
end PortInterface;