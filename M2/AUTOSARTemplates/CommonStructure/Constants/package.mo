within M2.AUTOSARTemplates.CommonStructure;
package Constants

  class ConstantSpecification "Specification of a constant that can be part of a
package, i.e. it can be defined stand-alone.\nTags:atp.recommendedPackage=ConstantSpecifications"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_valueSpec = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification valueSpec[n_valueSpec];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ConstantSpecification;
  partial class CompositeValueSpecification "This abstract meta-class acts a base class for ValueSpecifications that have a composite form."
    extends M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompositeValueSpecification;
  class ArrayValueSpecification "Specifies the values for an array."
    extends M2.AUTOSARTemplates.CommonStructure.Constants.CompositeValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_element = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification element[n_element];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_intendedPartialInitializationCount = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.SwRecordLayout intendedPartialInitializationCount[n_intendedPartialInitializationCount];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ArrayValueSpecification;

  class RecordValueSpecification "Specifies the values for a record."
    extends M2.AUTOSARTemplates.CommonStructure.Constants.CompositeValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_field = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification field[n_field];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RecordValueSpecification;

  class TextValueSpecification "The purpose of TextValueSpecification is to define the labels that correspond to enumeration values.\r"
    extends M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_value = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification value[n_value];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TextValueSpecification;
  class NumericalValueSpecification "A numerical ValueSpecification which is intended to\nbe assigned
to a Primitive data element. Note that\nthe numerical value is a variant, \nit can be computed by a formula.\r"

    extends M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_value = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification value[n_value];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NumericalValueSpecification;
  class ReferenceValueSpecification "Specifies a reference to a data prototype to be used as an initial value for a pointer in the software.\r"
    extends M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_referenceValue = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.DataPrototype referenceValue[n_referenceValue];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ReferenceValueSpecification;
  class NotAvailableValueSpecification "This meta-class provides the ability to specify a ValueSpecification
to state that the respective element is\nnot available. This ability is needed to support the existence of 
ApplicationRecordElements where\nattribute isOptional ist set to the value true.\nTags:atp.Status=draft"
    extends M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_defaultPattern = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.DataPrototype defaultPattern[n_defaultPattern];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NotAvailableValueSpecification;
  class ConstantReference "Instead of defining this value inline, a constant is referenced."

    extends M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_constant0 = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecification constant0[n_constant0];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ConstantReference;
  class ConstantSpecificationMapping "This meta-class is used to create an association 
of two ConstantSpecifications. One Constant\nSpecification is supposed to be defined 
in the application domain while the other should be defined in the\nimplementation
domain.\nHence the ConstantSpecificationMapping needs to be used where a ConstantSpecification 
defined in\none domain needs to be associated to a ConstantSpecification in the other domain.
\nThis information is crucial for the RTE generator.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_applConstant = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecification applConstant[n_applConstant];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_implConstant = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecification implConstant[n_implConstant];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ConstantSpecificationMapping;
  class ConstantSpecificationMappingSet "This meta-class represents the ability to map two
ConstantSpecifications to each others. One Constant\nSpecification is supposed to be described 
in the application domain and the other should be described in\nthe implementation domain.
\nTags:atp.recommendedPackage=ConstantSpecificationMappingSets\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_mapping = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecificationMapping mapping[n_mapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ConstantSpecificationMappingSet;
  class ApplicationValueSpecification "This meta-class represents values 
for DataPrototypes typed by ApplicationDataTypes (this includes in\nparticular 
compound primitives).\nFor further details refer to ASAM CDF 2.0. 
This meta-class corresponds to some extent with\nSW-INSTANCE in ASAM CDF 2.0."
    extends M2.AUTOSARTemplates.CommonStructure.Constants.CompositeRuleBasedValueArgument;
    extends M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisCont = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.CalibrationData.CalibrationValue.SwAxisCont swAxisCont[n_swAxisCont];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swValueCont = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.CalibrationData.CalibrationValue.SwValueCont swValueCont[n_swValueCont];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ApplicationValueSpecification;
  class NumericalOrText "This meta-class represents the ability to yield
either a numerical or a string. A typical use case is that two\nor more 
instances of this meta-class are aggregated with a VariationPoint where 
some instances yield\nstrings while other instances yield numerical
depending on the resolution of the binding expression."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vf = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList vf[n_vf];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vt = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String vt[n_vt];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NumericalOrText;
  class ApplicationRuleBasedValueSpecification "This meta-class represents rule
based values for DataPrototypes typed by ApplicationDataTypes\n
(ApplicationArrayDataType or a compound ApplicationPrimitiveDataType which also boils down to an\narray-nature).\r"
    extends M2.AUTOSARTemplates.CommonStructure.Constants.AbstractRuleBasedValueSpecification;
    extends M2.AUTOSARTemplates.CommonStructure.Constants.CompositeRuleBasedValueArgument;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ValueSpecification category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisCont = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedAxisCont swAxisCont[n_swAxisCont];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swValueCont = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueCont swValueCont[n_swValueCont];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ApplicationRuleBasedValueSpecification;
  class RuleBasedAxisCont "This represents the values for the axis of a compound 
primitive (curve, map).\nFor standard and fix axes, SwAxisCont contains the values 
of the axis directly.\nThe axis values of SwAxisCont with the category COM_AXIS,
RES_AXIS are for display only. For editing\nand processing, only the values in the related GroupAxis are binding."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.CalprmAxisCategoryEnum category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_ruleBasedValues = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueSpecification ruleBasedValues[n_ruleBasedValues];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swArraysize = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList swArraysize[n_swArraysize];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisIndex = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.AxisIndexType swAxisIndex[n_swAxisIndex];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unit = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit unit[n_unit];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RuleBasedAxisCont;
  class RuleBasedValueCont "This represents the values of a compound primitive
(CURVE, MAP, CUBOID, CUBE_4, CUBE_5, VAL_\nBLK) or an array."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueSpecification category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swArraysize = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList swArraysize[n_swArraysize];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swValueCont = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit swValueCont[n_swValueCont];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RuleBasedValueCont;
  class NumericalRuleBasedValueSpecification "This meta-class is used to 
support a rule-based initialization approach for data types with an 
array-nature\n(ImplementationDataType of category ARRAY)."
    extends M2.AUTOSARTemplates.CommonStructure.Constants.AbstractRuleBasedValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_ruleBasedValues = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueSpecification ruleBasedValues[n_ruleBasedValues];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end NumericalRuleBasedValueSpecification;
  class RuleBasedValueSpecification "This meta-class is used to support a rule-based 
initialization approach for data types with an array-nature\n(ApplicationArrayDataType
and ImplementationDataType of category ARRAY) or a compound Application\nPrimitiveDataType
(which also boils down to an array-nature)"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arguments = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleArguments category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxSizeToFill = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedAxisCont maxSizeToFill[n_maxSizeToFill];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_rule = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueCont rule[n_rule];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RuleBasedValueSpecification;
  class RuleArguments "This represents the arguments for a rule-based value specification."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_v = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.CalprmAxisCategoryEnum v[n_v];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vf = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueSpecification vf[n_vf];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vt = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList vt[n_vt];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vtf = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.NumericalOrText vtf[n_vtf];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RuleArguments;
  class CompositeRuleBasedValueSpecification "This meta-class represents rule-based
values for DataPrototypes typed by composite AutosarDataTypes."
    extends M2.AUTOSARTemplates.CommonStructure.Constants.AbstractRuleBasedValueSpecification;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_argument = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.CompositeValueSpecification argument[n_argument];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compoundPrimitiveArgument = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.CompositeRuleBasedValueArgument compoundPrimitiveArgument[n_compoundPrimitiveArgument];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxSizeToFill = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueSpecification maxSizeToFill[n_maxSizeToFill];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_rule = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.RuleBasedValueSpecification rule[n_rule];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompositeRuleBasedValueSpecification;
  partial class CompositeRuleBasedValueArgument "This meta-class has the ability to serve as 
the abstract base class for ValueSpecifications that can be\nused for compound primitive data types.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompositeRuleBasedValueArgument;
  class ValueSpecification "202307012 defined by Yang"
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ValueSpecification;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Constants;