within M2.MSR.DataDictionary;
package CalibrationParameter

  class SwCalprmAxisSet "This element specifies the input parameter axes (abscissas) of parameters (and variables, if these are\nused adaptively)"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swCalprmAxis = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.SwCalprmAxisSet swCalprmAxis[n_swCalprmAxis];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwCalprmAxisSet;
  class SwCalprmAxis "This element specifies an individual input parameter axis (abscissa)."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.CalprmAxisCategoryEnum category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_displayFormat = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.DisplayFormatString displayFormat[n_displayFormat];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisIndex = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.SwCalprmAxisSet swAxisIndex[n_swAxisIndex];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swCalibrationAccess = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwCalibrationAccessEnum swCalibrationAccess[n_swCalibrationAccess];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swCalprmAxisTypeProps = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.SwCalprmAxisTypeProps swCalprmAxisTypeProps[n_swCalprmAxisTypeProps];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwCalprmAxis;
  type CalprmAxisCategoryEnum = enumeration(comAxis, fixAXIS, resAxis, stdAxis);
  class SwCalprmAxisTypeProps "Base class for the type of the calibration axis. This provides the particular model of the specialization. If\nthe specialization would be the directly from SwCalPrmAxis, the sequence of common properties and the\nspecializes ones would be different."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxGradient = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.SwCalprmAxisSet maxGradient[n_maxGradient];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_monotony = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.MonotonyEnum monotony[n_monotony];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwCalprmAxisTypeProps;
  annotation (Protection(access = Access.nonPackageDuplicate));
end CalibrationParameter;