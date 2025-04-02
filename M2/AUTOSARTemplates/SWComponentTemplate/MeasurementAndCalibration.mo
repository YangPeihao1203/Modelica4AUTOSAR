within M2.AUTOSARTemplates.SWComponentTemplate;
package MeasurementAndCalibration

  package InterpolationRoutineMappingSet

    class InterpolationRoutineMappingSet "This meta-class specifies a set of interpolation routine mappings.\nTags:atp.recommendedPackage=InterpolationRoutineMappingSets"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_interpolationRoutineMapping = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.MeasurementAndCalibration.InterpolationRoutineMappingSet.InterpolationRoutineMapping interpolationRoutineMapping[n_interpolationRoutineMapping];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end InterpolationRoutineMappingSet;
    class InterpolationRoutineMapping "This meta-class provides a mapping between one record 
layout and its matching interpolation routines.\nThis allows to formally specify the
semantics of the interpolation routines.\nThe use case is such that the curves/Maps define 
an interpolation method. This mapping table specifies\nwhich interpolation routine 
implements methods for a particular record layout. Using this information, 
the\nimplementer of a software-component can select the appropriate interpolation routine."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_interpolationRoutine = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.MeasurementAndCalibration.InterpolationRoutineMappingSet.InterpolationRoutine interpolationRoutine[n_interpolationRoutine];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayout = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.RecordLayout.SwRecordLayout swRecordLayout[n_swRecordLayout];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end InterpolationRoutineMapping;
    class InterpolationRoutine "This represents an interpolation routine taken to evaluate the contents of a curve or map against a\nspecific input value.\r"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_interpolationRoutine = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.BswModuleTemplate.BswInterfaces.BswModuleEntry interpolationRoutine[n_interpolationRoutine];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_isDefault = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.RecordLayout.SwRecordLayout isDefault[n_isDefault];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_shortLabel = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.DataDictionary.RecordLayout.SwRecordLayout shortLabel[n_shortLabel];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end InterpolationRoutine;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end InterpolationRoutineMappingSet;
  package CalibrationParameterValues

    class CalibrationParameterValueSet "Specification of a constant that can be part of a package, 
i.e. it can be defined stand-alone.\nTags:atp.recommendedPackage=CalibrationParameterValueSets"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_calibrationParameterValue = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.MeasurementAndCalibration.CalibrationParameterValues.CalibrationParameterValue calibrationParameterValue[n_calibrationParameterValue];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end CalibrationParameterValueSet;
    class CalibrationParameterValue "Specifies instance specific calibration 
parameter values used to initialize the memory objects\nimplementing 
calibration parameters in the generated RTE code.\nRTE generator will use
the implInitValue to override the initial values specified for the 
DataPrototypes of a\ncomponent type.\nThe applInitValue is used to exchange
init values with the component vendor not publishing the\ntransformation 
algorithm between ApplicationDataTypes and ImplementationDataTypes or defining 
an\ninstance specific initialization of components which are only defined with 
ApplicationDataTypes.\nNote: If both representations of init values are available
these need to represent the same content.\nNote further that in this case an explicit 
mapping of ValueSpecification is not implemented because\ncalibration parameters are
delivered back after the calibration phase.\r"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_applInitValue = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification applInitValue[n_applInitValue];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_implInitValue = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification implInitValue[n_implInitValue];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_initializedParameter = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.CommonStructure.FlatMap.FlatInstanceDescriptor initializedParameter[n_initializedParameter];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end CalibrationParameterValue;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CalibrationParameterValues;
  annotation (Protection(access = Access.nonPackageDuplicate));
end MeasurementAndCalibration;