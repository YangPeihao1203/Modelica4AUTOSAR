within M2.MSR.DataDictionary;
package RecordLayout

  class SwRecordLayout "Defines how the data objects (variables, calibration parameters etc.) 
are to be stored in the ECU\nmemory. As an example, this definition specifies the sequence 
of axis points in the ECU memory.\nIterations through axis values are stored within the
sub-elements swRecordLayoutGroup.\nTags:atp.recommendedPackage=SwRecordLayouts\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.SwRecordLayoutGroup swRecordLayoutGroup[n_swRecordLayoutGroup];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwRecordLayout;
  class SwRecordLayoutV "This element specifies which values are stored for the current 
SwRecordLayoutGroup. If no baseType is\npresent, the SwBaseType referenced initially
in the parent SwRecordLayoutGroup is valid. The\nspecification of swRecordLayoutVAxis 
gives the axis of the values which shall be stored in accordance\nwith the current 
record layout SwRecordLayoutGroup. In swRecordLayoutVProp one can specify the\ninformation which shall be stored."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_baseType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.BaseTypes.SwBaseType baseType[n_baseType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_desc = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps desc[n_desc];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_shortLabel = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps shortLabel[n_shortLabel];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swGenericAxisParamType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwGenericAxisParamType swGenericAxisParamType[n_swGenericAxisParamType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutVAxis = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.AxisIndexType swRecordLayoutVAxis[n_swRecordLayoutVAxis];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutVFixValue = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swRecordLayoutVFixValue[n_swRecordLayoutVFixValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutVIndex = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swRecordLayoutVIndex[n_swRecordLayoutVIndex];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutVProp = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swRecordLayoutVProp[n_swRecordLayoutVProp];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwRecordLayoutV;
  class SwRecordLayoutGroup "Specifies how a record layout is set up. Using SwRecordLayoutGroup
it recursively models iterations\nthrough axis values. The subelement swRecordLayoutGroupContentType
may reference other Sw\nRecordLayouts, SwRecordLayoutVs and SwRecordLayoutGroups for the modeled record layout."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.AsamRecordLayoutSemantics category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_desc = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps desc[n_desc];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_shortLabel = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps shortLabel[n_shortLabel];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swGenericAxisParamType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwGenericAxisParamType swGenericAxisParamType[n_swGenericAxisParamType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutComponent = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.Axis.SwGenericAxisParamType swRecordLayoutComponent[n_swRecordLayoutComponent];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutVAxis = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.AxisIndexType swRecordLayoutVAxis[n_swRecordLayoutVAxis];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutGroupContentType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.SwRecordLayoutGroupContent swRecordLayoutGroupContentType[n_swRecordLayoutGroupContentType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutGroupFrom = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.RecordLayoutIteratorPoint swRecordLayoutGroupFrom[n_swRecordLayoutGroupFrom];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutGroupIndex = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swRecordLayoutGroupIndex[n_swRecordLayoutGroupIndex];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutGroupStep = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps sswRecordLayoutGroupStep[n_swRecordLayoutGroupStep];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutGroupTo = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.RecordLayoutIteratorPoint swRecordLayoutGroupTo[n_swRecordLayoutGroupTo];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwRecordLayoutGroup;
  class SwRecordLayoutGroupContent "This is the contents of a RecordLayout which is inserted for
every iteration. Note that since this is atp\nMixed, multiple properties can be inserted for each iteration.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayout = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.SwRecordLayout swRecordLayout[n_swRecordLayout];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.SwRecordLayoutGroup swRecordLayoutGroup[n_swRecordLayoutGroup];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swRecordLayoutV = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.RecordLayout.SwRecordLayoutV swRecordLayoutV[n_swRecordLayoutV];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwRecordLayoutGroupContent;
  annotation (Protection(access = Access.nonPackageDuplicate));
end RecordLayout;