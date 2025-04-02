within M2.AUTOSARTemplates.CommonStructure;
package ResourceConsumption

  package MemorySectionUsage
    annotation (Protection(access = Access.nonPackageDuplicate));



  end MemorySectionUsage;
  class MemorySection "Provides a description of an abstract memory 
section\nused in the Implementation for code or data. It shall\nbe
declared by the \nImplementation Description of the module or component, 
which actually \nallocates the\nmemory in its code. This means in case of 
data prototypes\nwhich are allocated by the RTE, that the\ngenerated 
Implementation Description\nof the RTE shall contain the corresponding 
MemorySections.\nThe attribute \"symbol\" \n(if symbol is missing: \"shortName\") 
defines the module or component specific\nsection \nname used in the code. 
For details see the document \"Specification of Memory Mapping\".\r"
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_alignment = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.AlignmentType alignment[n_alignment];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_executableEntity = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExecutableEntity executableEntity[n_executableEntity];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_option = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeErrorBehavior option[n_option];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_prefix = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.AlignmentType prefix[n_prefix];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_size = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.InternalBehavior.ExecutableEntity size[n_size];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swAddrmethod = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.AuxillaryObjects.SwAddrMethod swAddrmethod[n_swAddrmethod];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_symbol = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.AuxillaryObjects.SwAddrMethod symbol[n_symbol];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end MemorySection;
  annotation (Protection(access = Access.nonPackageDuplicate));
end ResourceConsumption;