within M2.MSR.CalibrationData;
package CalibrationValue

  class SwValueCont "This metaclass represents the content of one particular SwInstance."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swArraysize = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList swArraysize[n_swArraysize];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swValuesPhys = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.CalibrationData.CalibrationValue.SwValues swValuesPhys[n_swValuesPhys];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unit = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit unit[n_unit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unitDisplayName = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.ConstantSpecification unitDisplayName[n_unitDisplayName];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwValueCont;
  class SwAxisCont "This represents the values for the axis of a compound 
primitive (curve, map).\nFor standard and fix axes, SwAxisCont contains 
the values of the axis directly.\nThe axis values of SwAxisCont with the 
category COM_AXIS, RES_AXIS are for display only. For editing\nand 
processing, only the values in the related GroupAxis are binding."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.CalprmAxisCategoryEnum category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swArraysize = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList swArraysize[n_swArraysize];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAxisIndex = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.AxisIndexType swAxisIndex[n_swAxisIndex];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unit = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit unit[n_unit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unitDisplayName = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit unitDisplayName[n_unitDisplayName];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwAxisCont;
  class SwValues "This meta-class represents a list of values. These 
values can either be the input values of a curve\n(abscissa values) 
or the associated values (ordinate values).\nIn case of multidimensional 
structures, the values are ordered such that the lowest index runs the
fastest.\nIn particular for maps and cuboids etc. the resulting long value 
list can be subsectioned using Value\nGroup. But the processing needs to
be done as if vg is not there.\nNote that numerical values and textual values should not be mixed.\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_v = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.CalprmAxisCategoryEnum v[n_v];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vf = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.ValueList vf[n_vf];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vg = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.CalibrationData.CalibrationValue.ValueGroup vg[n_vg];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vt = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit vt[n_vt];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vtf = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Constants.NumericalOrText vtf[n_vtf];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwValues;
  class ValueGroup "This element enables values to be grouped. 
It can be used to perform row and column-orientated\ngroupings,
so that these can be rendered properly e.g. as a table.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_label = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.CalibrationParameter.CalprmAxisCategoryEnum label[n_label];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_vgContents = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.CalibrationData.CalibrationValue.SwValues vgContents[n_vgContents];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ValueGroup;
  annotation (Protection(access = Access.nonPackageDuplicate));
end CalibrationValue;