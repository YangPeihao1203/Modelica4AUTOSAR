within M2.AUTOSARTemplates.SWComponentTemplate;
package Datatype
  package Datatypes
    class AutosarDataType "Abstract base class for user defined AUTOSAR data types for software"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swDataDefProps[n_swDataDefProps];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AutosarDataType;
    partial class ApplicationDataType "ApplicationDataType defines a data type from the application point of view. Especially it should be used\nwhenever something \"physical\" is at stake.\nAn ApplicationDataType represents a set of values as seen in the application model, such as\nmeasurement units. It does not consider implementation details such as bit-size, endianess, etc.\nIt should be possible to model the application level aspects of a VFB system by using ApplicationData\nTypes only"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.AutosarDataType;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationDataType;
    class DataTypeMap "This class represents the relationship between ApplicationDataType and its implementing Abstract\nImplementationDataType."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_applicationDataType = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationDataType applicationDataType[n_applicationDataType];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_implementationDataType = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataType implementationDataType[n_implementationDataType];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataTypeMap;
    class DataTypeMappingSet
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataTypeMap = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.DataTypeMap dataTypeMap[n_dataTypeMap];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeRequestTypeMap = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeRequestTypeMap modeRequestTypeMap[n_modeRequestTypeMap];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataTypeMappingSet;
    class ApplicationPrimitiveDataType "A primitive data type defines a set of allowed values.\nTags:atp.recommendedPackage=ApplicationDataTypes"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationDataType;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationPrimitiveDataType;
    class ApplicationCompositeDataType "Abstract base class for all application data types composed of other data types."
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationDataType;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationCompositeDataType;
    class ApplicationArrayDataType "An application data type which is an array, each element is of the same application data type.\nTags:atp.recommendedPackage=ApplicationDataTypes"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationCompositeDataType;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_dynamicArraySizeProfile = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes dynamicArraySizeProfile[n_dynamicArraySizeProfile];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_element = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ApplicationArrayElement element[n_element];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationArrayDataType;
    type ArraySizeHandlingEnum = enumeration(allIndicesDifferentArraySize, allIndicesSameArraySize, inheritedFromArrayElementTypeSize);
    class ApplicationRecordDataType "An application data type which can be decomposed into prototypes of other application data types.\nTags:atp.recommendedPackage=ApplicationDataTypes"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationCompositeDataType;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_element = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ApplicationRecordElement element[n_element];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationRecordDataType;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Datatypes;



  package DataPrototypes
    partial class AutosarDataPrototype "Base class for prototypical roles of an AutosarDataType"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.DataPrototype;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_type0 = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.AutosarDataType type0[n_type0];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AutosarDataPrototype;
    class ParameterDataPrototype "A ParameterDataPrototype reprents a formalized generic piece of information that is typically immutable by the application software layer,
        but mutable by measurement and calibration tools. parameterDataPrototype is used in various contexts and the specific context gives the otherwise generaic
        ParameterDataPrototype a dedicated semantics"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_initValue = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification initValue[n_initValue];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ParameterDataPrototype;
    class ApplicationArrayElement "Describes the properties of the elements of an application array data type.\r"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ApplicationCompositeElementDataPrototype;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_arraySizeHandling = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ArraySizeHandlingEnum arraySizeHandling[n_arraySizeHandling];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_arraySizeSemantics = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.ArraySizeSemanticsEnum arraySizeSemantics[n_arraySizeSemantics];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_indexDataType = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationPrimitiveDataType indexDataType[n_indexDataType];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxNumberOfElements = 0 annotation (Dialog(connectorSizing = true));
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationArrayElement;

    class ApplicationRecordElement "Describes the properties of one particular element of an application record data type."
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.ApplicationCompositeElementDataPrototype;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_isOptional = 0 annotation (Dialog(connectorSizing = true));
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationRecordElement;

    class DataPrototype "Base class for prototypical roles of any data type."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swDataDefProps[n_swDataDefProps];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataPrototype;
    partial class ApplicationCompositeElementDataPrototype "This class represents a data prototype which is aggregated within a composite application data type\n(record or array). It is introduced to provide a better distinction between target and context in instance\nRefs"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.DataPrototype;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_type0 = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationDataType type0[n_type0];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ApplicationCompositeElementDataPrototype;
    class VariableDataPrototype "A VariableDataPrototype represents a formalized generic piece of information that is typically mutable by\nthe application software layer. VariableDataPrototype is used in various contexts and the specific context\ngives the otherwise generic VariableDataPrototype a dedicated semantics.\r"
      extends M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_initValue = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification initValue[n_initValue];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end VariableDataPrototype;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DataPrototypes;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Datatype;