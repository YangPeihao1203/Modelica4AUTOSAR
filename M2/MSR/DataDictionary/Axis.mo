within M2.MSR.DataDictionary;
package Axis "This meta-class describes an axis integrated into a parameter (field etc.). The integration makes this\nindividual to each parameter. The so-called grouped axis represents the counterpart to this. It is\nconceived as an independent parameter (see class SwAxisGrouped).\r"

  class SwAxisIndividual "This meta-class describes an axis integrated into a parameter (field etc.). The integration makes this\nindividual to each parameter. The so-called grouped axis represents the counterpart to this. It is\nconceived as an independent parameter (see class SwAxisGrouped).\r"
    extends M2.MSR.DataDictionary.CalibrationParameter.SwCalprmAxisTypeProps;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuMethod = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuMethod compuMethod[n_compuMethod];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataConstr = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Constraints.GlobalConstraints.DataConstr dataConstr[n_dataConstr];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_inputVariableType = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationPrimitiveDataType inputVariableType[n_inputVariableType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisGeneric = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwAxisGeneric swAxisGeneric[n_swAxisGeneric];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swMaxAxisPoints = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Constraints.GlobalConstraints.DataConstr swMaxAxisPoints[n_swMaxAxisPoints];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swMinAxisPoints = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuMethod swMinAxisPoints[n_swMinAxisPoints];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swVariableRef = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DatadictionaryProxies.SwVariableRefProxy swVariableRef[n_swVariableRef];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unit = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit unit[n_unit];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwAxisIndividual;
  class SwAxisGeneric "This meta-class defines a generic axis. In a generic axis the axispoints points are calculated in the ECU.\nThe ECU is equipped with a fixed calculation algorithm. Parameters for the algorithm can be stored in the\ndata component of the ECU. Therefore these parameters are specified in the data declaration, not in the\ncalibration data."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwAxisType swAxisType[n_swAxisType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swGenericAxisParam = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwGenericAxisParam swGenericAxisParam[n_swGenericAxisParam];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwAxisGeneric;
  class SwAxisType "This meta-class represents a specific axis calculation strategy. 
No formal specification is given, due to\nthe fact that it is possible to use 
arbitrary algorithms for calculating axis-points.\nInstead, the algorithm is described
verbally but the parameters are specified formally with respect to their\nnames and 
constraints. As a result, SwAxisType mainly reserves appropriate keywords.\nTags:atp.recommendedPackage=SwAxisTypes\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swGenericAxisDesc = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.Documentation.BlockElements.DocumentationBlock swGenericAxisDesc[n_swGenericAxisDesc];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swGenericAxisParamType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwGenericAxisParamType swGenericAxisParamType[n_swGenericAxisParamType];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwAxisType;
  class SwGenericAxisParam "This meta-class describes a specific parameter of 
a generic axis. The name of the parameter is defined\nthrough a reference to
a parameter type defined on a corresponding axis type.\nThe value of the 
parameter is given here in case that it is not changeable during calibration.
Example is\nshift / offset in a fixed axis."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swGenericAxisParamType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwGenericAxisParamType swGenericAxisParamType[n_swGenericAxisParamType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vf = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwGenericAxisParam vf[n_vf];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwGenericAxisParam;
  class SwGenericAxisParamType "This meta-class describes a generic
axis parameter type, namely:\n• Plausibility checks can be specified 
via dataConstr.\n• Textual description (desc), as a formal description
is not of any use, due to the large variety of\npossibilities.\n• 
If this parameter contains structures, these can be simulated through 
the recursive use of Sw\nGenericAxisParamTypes."
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataConstr = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Constraints.GlobalConstraints.DataConstr dataConstr[n_dataConstr];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwGenericAxisParamType;
  class SwAxisGrouped "An SwAxisGrouped is an axis which is shared between multiple calibration parameters.\r"
    extends M2.MSR.DataDictionary.CalibrationParameter.SwCalprmAxisTypeProps;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_sharedAxisType = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.Datatypes.ApplicationPrimitiveDataType sharedAxisType[n_sharedAxisType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisIndex = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.AxisIndexType swAxisIndex[n_swAxisIndex];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swCalprmRef = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DatadictionaryProxies.SwCalprmRefProxy swCalprmRef[n_swCalprmRef];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwAxisGrouped;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Axis;