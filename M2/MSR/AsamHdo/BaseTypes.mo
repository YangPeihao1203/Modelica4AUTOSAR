within M2.MSR.AsamHdo;
package BaseTypes "This meta-class represents a base type used within ECU software.\nTags:atp.recommendedPackage=BaseTypes"

  class SwBaseType "This meta-class represents a base type used within ECU software.\nTags:atp.recommendedPackage=BaseTypes."
    annotation (Protection(access = Access.nonPackageDuplicate));



  end SwBaseType;
  class BaseTypeDefinition
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end BaseTypeDefinition;
  class BaseTypeDirectDefinition "This BaseType is defined directly (as opposite to a derived BaseType)"
    extends M2.MSR.AsamHdo.BaseTypes.BaseTypeDefinition;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_baseTypeEncoding = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.ServiceMapping.RoleBasedDataTypeAssignment baseTypeEncoding[n_baseTypeEncoding];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_baseTypeSize = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.ServiceDiagnosticRelevanceEnum baseTypeSize[n_baseTypeSize];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_byteOrder = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.ByteOrderEnum byteOrder[n_byteOrder];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_memAlignment = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.ServiceDiagnosticRelevanceEnum memAlignment[n_memAlignment];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_nativeDeclaration = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NativeDeclarationString nativeDeclaration[n_nativeDeclaration];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end BaseTypeDirectDefinition;
  partial class BaseType "This abstract meta-class represents the ability to specify a platform dependent base type."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_baseTypeDefinition = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.BaseTypes.BaseTypeDirectDefinition baseTypeDefinition[n_baseTypeDefinition];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end BaseType;
  annotation (Protection(access = Access.nonPackageDuplicate));
end BaseTypes;