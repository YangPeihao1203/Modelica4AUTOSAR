within M2.MSR.AsamHdo;
package Constraints

  package GlobalConstraints

    class DataConstr "This meta-class represents the ability to specify constraints on data.\nTags:atp.recommendedPackage=DataConstrs"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataConstrRule = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Constraints.GlobalConstraints.DataConstrRule dataConstrRule[n_dataConstrRule];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataConstr;
    class DataConstrRule "This meta-class represents the ability to express one specific data constraint rule."

      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_constrLevel = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Units.PhysicalDimension constrLevel[n_constrLevel];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_internalConstrs = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Constraints.GlobalConstraints.InternalConstrs internalConstrs[n_internalConstrs];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_physConstrs = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Constraints.GlobalConstraints.PhysConstrs physConstrs[n_physConstrs];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DataConstrRule;
    class PhysConstrs "This meta-class represents the ability to express physical constraints. Therefore it has (in opposite to\nInternalConstrs) a reference to a Unit"

      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_lowerLimit = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit lowerLimit[n_lowerLimit];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxDiff = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Constraints.GlobalConstraints.InternalConstrs maxDiff[n_maxDiff];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxGradient = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Constraints.GlobalConstraints.PhysConstrs maxGradient[n_maxGradient];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_monotony = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.MonotonyEnum monotony[n_monotony];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_scaleConstr = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Constraints.GlobalConstraints.ScaleConstr scaleConstr[n_scaleConstr];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_unit = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Units.Unit unit[n_unit];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_upperLimit = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit upperLimit[n_upperLimit];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end PhysConstrs;
    class InternalConstrs "This meta-class represents the ability to express internal constraints"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_lowerLimit = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit lowerLimit[n_lowerLimit];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxDiff = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit maxDiff[n_maxDiff];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxGradient = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit maxGradient[n_maxGradient];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_monotony = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.MonotonyEnum monotony[n_monotony];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end InternalConstrs;
    class ScaleConstr "This meta-class represents the ability to specify constraints as a list of intervals (called scales).\r"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_desc = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit desc[n_desc];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_lowerLimit = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit lowerLimit[n_lowerLimit];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_shortLabel = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit shortLabel[n_shortLabel];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_upperLimit = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Limit upperLimit[n_upperLimit];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_validity = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.Constraints.GlobalConstraints.ScaleConstrValidityEnum validity[n_validity];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ScaleConstr;

    type ScaleConstrValidityEnum = enumeration(notAvailable, notDefined, notValid, valid);
    annotation (Protection(access = Access.nonPackageDuplicate));
  end GlobalConstraints;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Constraints;