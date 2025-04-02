within M2.AUTOSARTemplates.GenericStructure;
package VariantHandling
  package AttributeValueVariationPoints

    class AttributeValueVariationPoint "This class represents the ability to derive the value of the Attribute from a system constant (by Sw\nSystemconstDependentFormula). It also provides a bindingTime."
      extends M2.AUTOSARTemplates.GenericStructure.VariantHandling.SwSystemconstDependentFormula;
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_bindingTime = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.VariantHandling.BindingTimeEnum bindingTime[n_bindingTime];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_blueprintValue = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String blueprintValu[n_blueprintValue];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_sd = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String sd[n_sd];
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_shortLabel = 0 annotation (Dialog(connectorSizing = true));
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AttributeValueVariationPoint;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AttributeValueVariationPoints;
  class ConditionByFormula "This class represents a condition which is computed based on system constants according to the\nspecified expression. The expected result is considered as boolean value.\nThe result of the expression is interpreted as a condition.\n• \"0\" represents \"false\";\n• a value other than zero is considered \"true\""
    extends M2.AUTOSARTemplates.GenericStructure.VariantHandling.SwSystemconstDependentFormula;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_bindingTime = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.VariantHandling.BindingTimeEnum bindingTime[n_bindingTime];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ConditionByFormula;
  class PostBuildVariantCriterion "This class specifies one particular PostBuildVariantSelector.\nTags:atp.recommendedPackage=PostBuildVariantCriterions"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuMethod = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuMethod compuMethod[n_compuMethod];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PostBuildVariantCriterion;
  class PostBuildVariantCondition "This class specifies the value which shall be assigned to a particular variant criterion in order to bind the\nvariation point. If multiple criterion/value pairs are specified, they shall all match to bind the variation\npoint.\nIn other words binding can be represented by\n(criterion1 == value1) && (condition2 == value2) ..."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_matchingCriterion = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.VariantHandling.PostBuildVariantCriterion matchingCriterion[n_matchingCriterion];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_value = 0 annotation (Dialog(connectorSizing = true));
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PostBuildVariantCondition;
  annotation (Protection(access = Access.nonPackageDuplicate));
end VariantHandling;