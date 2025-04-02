within M2.MSR.DataDictionary;
package AuxillaryObjects
  type MemoryAllocationKeywordPolicyType = enumeration(addrMethodShortName  "The MemorySection shortNames of referring MemorySections and therefore the belonging Memory Allocation Keywords in the code are build with the shortName of the SwAddrMethod. This is the default value if the attribute does not exist. Tags:atp.EnumerationLiteralIndex=0", 
    addrMethodShortNameAndAlignment  "The MemorySection shortNames of referring MemorySections and therefore the belonging Memory Allocation Keywords in the code are build with the shortName of the SwAddrMethod and a variable alignment postfix.
                                Thereby the alignment postfix needs to be consistent with the alignment attribute of the related MemorySection.
                                Tags:atp.EnumerationLiteralIndex=1") "Enumeration to specify the name pattern of the Memory Allocation Keyword.";
  type MemorySectionType = enumeration(:) "Enumeration to specify the essential nature of the data which can be allocated in a common memory class by the means of the AUTOSAR Memory Mapping.";
  class SwAddrMethod "Used to assign a common addressing method, e.g. common memory section, to data or code objects.
                      These objects could actually live in different modules or components.
                      Tags:atp.recommendedPackage=SwAddrMethods"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_memoryAllocationKeywordPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.AuxillaryObjects.MemoryAllocationKeywordPolicyType memoryAllocationKeywordPolicy[n_memoryAllocationKeywordPolicy];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_option = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps option[n_option];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_sectionInitializationPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.SectionInitializationPolicyType sectionInitializationPolicy[n_sectionInitializationPolicy];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_sectionType = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.AuxillaryObjects.MemorySectionType sectionType[n_sectionType];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwAddrMethod;
  annotation (Protection(access = Access.nonPackageDuplicate));
end AuxillaryObjects;