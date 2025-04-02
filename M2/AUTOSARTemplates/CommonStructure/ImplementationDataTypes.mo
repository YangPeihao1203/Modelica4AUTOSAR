within M2.AUTOSARTemplates.CommonStructure;
package ImplementationDataTypes
  partial class AbstractImplementationDataType "This meta-class represents an abstract base class for different flavors of ImplementationDataType."
    extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.AutosarDataType;
    annotation (Protection(access = Access.nonPackageDuplicate));


  end AbstractImplementationDataType;
  type ArraySizeSemanticsEnum = enumeration(fixedSize, variableSize) "This type controls how the information about the number of elements in an ApplicationArrayDataType\nis to be interpreted";

  class ImplementationDataType "Describes a reusable data type on the implementation level. This will typically correspond to a typedef in\nC-code.\nTags:atp.recommendedPackage=ImplementationDataTypes\r"
    extends M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataType;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dynamicArraySizeProfile = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String dynamicArraySizeProfile[n_dynamicArraySizeProfile];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_isStructWithOptionalElement = 0 annotation (Dialog(connectorSizing = true));

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_subElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ImplementationDataTypeElement subElement[n_subElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_symbolProps = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ComponentssymbolProps.SymbolProps symbolProps[n_symbolProps];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_typeEmitter = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NameToken typeEmitter[n_typeEmitter];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ImplementationDataType;

  class AbstractImplementationDataTypeElement "This meta-class represents the ability to act as an abstract 
base class for specific derived meta-classes\nthat support the modeling of ImplementationDataTypes for a particular language binding"
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AbstractImplementationDataTypeElement;
  class ImplementationDataTypeElement "Declares a data object which is locally aggregated. 
Such an element can only be used within the scope\nwhere it is aggregated.\nThis element 
either consists of further subElements or it is further defined via its swDataDefProps.
\nThere are several use cases within the system of ImplementationDataTypes fur such a 
local declaration:\n• It can represent the elements of an array, defining the element
type and array size\n• It can represent an element of a struct, defining its type\n• 
It can be the local declaration of a debug element"
    extends M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataTypeElement;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arrayImplPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ArrayImplPolicyEnum arrayImplPolicy[n_arrayImplPolicy];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arraySize = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ArrayImplPolicyEnum arraySize[n_arraySize];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arraySizeHandling = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ArraySizeHandlingEnum arraySizeHandling[n_arraySizeHandling];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arraySizeSemantics = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ArraySizeSemanticsEnum arraySizeSemantics[n_arraySizeSemantics];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_isOptional = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ArrayImplPolicyEnum isOptional[n_isOptional];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_subElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ImplementationDataTypeElement subElement[n_subElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swDataDefProps[n_swDataDefProps];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ImplementationDataTypeElement;
  type ArrayImplPolicyEnum = enumeration(payloadAsArray, payloadAsPointerToArray) "This meta-class provides values to 
  configure the implementation of the payload part of an array.";
  annotation (Protection(access = Access.nonPackageDuplicate));
end ImplementationDataTypes;