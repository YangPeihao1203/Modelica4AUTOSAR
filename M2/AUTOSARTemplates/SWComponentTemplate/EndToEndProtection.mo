within M2.AUTOSARTemplates.SWComponentTemplate;
package EndToEndProtection

  class EndToEndDescription "This meta-class contains information about end-to-end protection. 
The set of applicable attributes\ndepends on the actual value of the category attribute of EndToEndProtection."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_category = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.Filter.DataFilterTypeEnum category[n_category];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_counterOffset = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype counterOffset[n_counterOffset];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_crcOffset = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleOutOfRangeEnum crcOffset[n_crcOffset];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataId = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.HandleOutOfRangeStatusEnum dataId[n_dataId];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataIdMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.CompositeNetworkRepresentation dataIdMode[n_dataIdMode];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataIdNibbleOffset = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype dataIdNibbleOffset[n_dataIdNibbleOffset];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataLength = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps dataLength[n_dataLength];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxDeltaCounterInit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Communication.CompositeNetworkRepresentation maxDeltaCounterInit[n_maxDeltaCounterInit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_maxNoNewOrRepeatedData = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.AutosarDataPrototype maxNoNewOrRepeatedData[n_maxNoNewOrRepeatedData];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_syncCounterInit = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps syncCounterInit[n_syncCounterInit];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end EndToEndDescription;
  class EndToEndProtectionSet "This represents a container for collection EndToEndProtectionInformation.
\nTags:atp.recommendedPackage=EndToEndProtectionSets"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_endToEndProtection = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.EndToEndProtection.EndToEndProtection endToEndProtection[n_endToEndProtection];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end EndToEndProtectionSet;
  class EndToEndProtection "This meta-class represents the ability to describe a particular end to end protection.\r"

    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_endToEndProfile = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.EndToEndProtection.EndToEndDescription endToEndProfile[n_endToEndProfile];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_endToEndProtectionlSignalIPdu = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SystemTemplate.EndToEndProtection.EndToEndProtectionISignalIPdu endToEndProtectionlSignalIPdu[n_endToEndProtectionlSignalIPdu];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_endToEndProtectionVariablePrototype = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.EndToEndProtection.EndToEndProtectionVariablePrototype endToEndProtectionVariablePrototype[n_endToEndProtectionVariablePrototype];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end EndToEndProtection;
  annotation (Protection(access = Access.nonPackageDuplicate));
end EndToEndProtection;