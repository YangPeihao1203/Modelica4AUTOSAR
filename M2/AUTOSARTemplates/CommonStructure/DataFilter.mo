within M2.AUTOSARTemplates.CommonStructure;
package DataFilter

  class DataFilter "Base class for data filters. The type of the filter is specified 
in attribute dataFilterType. Some of the filter\ntypes require additional arguments 
which are specified as attributes of this class.\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataFilterType = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Filter.DataFilterTypeEnum dataFilterType[n_dataFilterType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_mask = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype mask[n_mask];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_max = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleOutOfRangeEnum max[n_max];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_min = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleOutOfRangeStatusEnum min[n_min];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_offset = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.CompositeNetworkRepresentation offset[n_offset];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_period = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype period[n_period];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_x = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps x[n_x];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DataFilter;

  type DataFilterTypeEnum = enumeration(always, maskedNewDiffersMaskedOld, maskedNewDiffersX, maskedNewEqualsX, 
    never, newIsOutside, newIsWithin, oneEveryN);
  annotation (Protection(access = Access.nonPackageDuplicate));
end DataFilter;