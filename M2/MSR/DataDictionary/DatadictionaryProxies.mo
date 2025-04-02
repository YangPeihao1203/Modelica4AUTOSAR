within M2.MSR.DataDictionary;
package DatadictionaryProxies "Wrapper class for different kinds of references to a calibration parameter."
  extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

  parameter M2.Utilities.MultiInterger.Interger0Unbound n_functionPointerSignature = 0 annotation (Dialog(connectorSizing = true));
  M2.AUTOSARTemplates.BswModuleTemplate.BswInterfaces.BswModuleEntry isOptional[n_isOptional];

  parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
  M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps subElement[n_subElement];
  class SwCalprmRefProxy "Wrapper class for different kinds of references to a calibration parameter."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arParameter = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.AutosarParameterRef arParameter[n_arParameter];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_mcDataInstance = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.MeasurementCalibrationSupport.McDataInstance mcDataInstance[n_mcDataInstance];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwCalprmRefProxy;
  class SwVariableRefProxy "Proxy class for several kinds of references to a variable."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_autosarVariable = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.DataElements.AutosarVariableRef autosarVariable[n_autosarVariable];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_mcDataInstanceVar = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.MeasurementCalibrationSupport.McDataInstance mcDataInstanceVar[n_mcDataInstanceVar];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwVariableRefProxy;
  annotation (Protection(access = Access.nonPackageDuplicate));
end DatadictionaryProxies;