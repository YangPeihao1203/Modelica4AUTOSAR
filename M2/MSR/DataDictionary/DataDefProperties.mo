within M2.MSR.DataDictionary;
package DataDefProperties

  class SwPointerTargetProps "This element defines, that the data object (which is specified by the aggregating element) 
contains a\nreference to another data object or to a function in the CPU code. This corresponds to a pointer in the
\nC-language.\nThe attributes of this element describe the category and the detailed properties of the target which 
is\neither a data description or a function signature"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_functionPointerSignature = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.BswModuleTemplate.BswInterfaces.BswModuleEntry isOptional[n_isOptional];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps subElement[n_subElement];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_targetCategory = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swDataDefProps[n_swDataDefProps];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwPointerTargetProps;
  class SwBitRepresentation "Description of the structure of a bit variable: Comprises of the bitPosition in a memory object (e.g. sw\nHostVariable, which stands parallel to swBitRepresentation) and the numberOfBits . In this way,\ninterrelated memory areas can be described. Non-related memory areas are not supported."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_bitPosition = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.VariantHandling.VariationPointProxy bitPosition[n_bitPosition];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_numberOfBits = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.VariantHandling.VariationPointProxy numberOfBits[n_numberOfBits];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwBitRepresentation;
  type SwCalibrationAccessEnum = enumeration(notAccessible, readOnly, readWrite);
  type SwImplPolicyEnum = enumeration(const, fixed, measurementPoint, queued, standard);
  class SwDataDependency "This element describes the interdependencies of data objects, e.g. variables and parameters.\nUse cases:\n• Calculate the value of a calibration parameter (by the MCD system) from the value(s) of other\ncalibration parameters.\n• Virtual data - that means the data object is not directly in the ecu and this property describes\nhow the \"virtual variable\" can be computed from the real ones (by the MCD system)."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuInternalToPhys = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.Compu compuInternalToPhys[n_compuInternalToPhys];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuPhysToInternal = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.Compu compuPhysToInternal[n_compuPhysToInternal];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_displayFormat = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.DisplayFormatString displayFormat[n_displayFormat];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unit = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit unit[n_unit];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwDataDependency;

  type DisplayPresentationEnum = enumeration(presentationContinuous, presentationDiscrete);

  class ValueList "This is a generic list of numerical values.\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_v = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList v[n_v];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vf = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String vf[n_vf];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ValueList;


  class SwDataDefProps "defined by yangpeihao "
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwDataDefProps;
  annotation (Protection(access = Access.nonPackageDuplicate));
end DataDefProperties;