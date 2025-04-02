within M2.AUTOSARTemplates.SWComponentTemplate;
package SwcImplementation
  class SwcImplementation "This meta-class represents a specialization of the general Implementation meta-class with respect to the\nusage in application software.\nTags:atp.recommendedPackage=SwcImplementations"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_behavior = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.SwcInternalBehavior behavior[n_behavior];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_perInstanceMemorySize = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcImplementation.PerInstanceMemorySize perInstanceMemorySize[n_perInstanceMemorySize];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_requiredRTEVendor = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.String requiredRTEVendor[n_requiredRTEVendor];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwcImplementation;
  class PerInstanceMemorySize "Resources needed by the allocation of PerInstanceMemory for each SWC instance. Note that these\nresources are not covered by an ObjectFileSection, because they are supposed to be allocated by the\nRTE."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_perInstanceMemory = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.PerInstanceMemory.PerInstanceMemory perInstanceMemory[n_perInstanceMemory];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PerInstanceMemorySize;
  annotation (Protection(access = Access.nonPackageDuplicate));
end SwcImplementation;