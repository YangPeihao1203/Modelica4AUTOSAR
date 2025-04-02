within M2.AUTOSARTemplates.CommonStructure;
package ServiceNeeds
  partial class ServiceNeeds "This expresses the abstract needs that a Software Component or Basic Software Module has on the\nconfiguration of an AUTOSAR Service to which it will be connected. \"Abstract needs\" means that the\nmodel abstracts from the Configuration Parameters of the underlying Basic Software."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    annotation (Protection(access = Access.nonPackageDuplicate));



  end ServiceNeeds;
  class VendorSpecificServiceNeeds "This represents the ability to define vendor-specific service needs."
    extends M2.AUTOSARTemplates.CommonStructure.ServiceNeeds;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end VendorSpecificServiceNeeds;
  class RoleBasedDataAssignment "This class specifies an assignment of a role to a particular data object in either\n• the SwcInternalBehavior of a software component (or in the BswInternalBehavior of a BSW\nmodule or BSW cluster) in the context of an AUTOSAR Service or\n• an NvBlockDescriptor to sort out the assignment of event-based writing strategies to data\nelements in a PortPrototype.\nWith this assignment, the role of the data can be mapped to a DataPrototype that is used in the context\nof the definition of a specific ServiceNeeds or NvBlockDescriptor, so that a tool is able to create the\ncorrect access or writing strategy"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_role = 0 annotation (Dialog(connectorSizing = true));

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_usedDataElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.AutosarVariableRef usedDataElement[n_usedDataElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_usedParameterElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.AutosarParameterRef usedParameterElement[n_usedParameterElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_usedPim = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.PerInstanceMemory.PerInstanceMemory usedPim[n_usedPim];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RoleBasedDataAssignment;
  partial class ServiceDependency "Collects all dependencies of a software module or component on an AUTOSAR Service related to a\nspecific item (e.g. an NVRAM Block, a diagnostic event etc.). It defines the quality of service (Service\nNeeds) of this item as well as (optionally) references to additional elements.\nThis information is required for tools in order to generate the related basic software configuration and\nServiceSwComponentTypes."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_assignedDataType = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ServiceMapping.RoleBasedDataTypeAssignment assignedDataType[n_assignedDataType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_diagnosticRelevance = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.ServiceDiagnosticRelevanceEnum diagnosticRelevance[n_diagnosticRelevance];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_symbolicNameProps = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.SymbolicNameProps symbolicNameProps[n_symbolicNameProps];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ServiceDependency;
  class SymbolicNameProps "Defines a symbol to be used as (depending on the concrete case) either a complete replacement or a\nprefix when generating code artifacts."
    extends M2.AUTOSARTemplates.CommonStructure.Implementation.ImplementationProps;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SymbolicNameProps;
  type ServiceDiagnosticRelevanceEnum = enumeration(isNotRelevant, isRelevant) "This enumeration provides values to describe the diagnostic relevance of a SwcServiceDependency\n(specifically if the aggregated ServiceNeeds itself does not indicate a relevance for diagnostics).";
  annotation (Protection(access = Access.nonPackageDuplicate));
end ServiceNeeds;