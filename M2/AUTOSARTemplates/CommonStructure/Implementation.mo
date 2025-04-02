within M2.AUTOSARTemplates.CommonStructure;
package Implementation
  partial class ImplementationProps "Defines a symbol to be used as (depending on the concrete case) either a complete replacement or a prefix when generating code artifacts."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Referrable;
    parameter M2.Utilities.MultiInterger.Interger01 n_symbol = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.CIdentifier symbol[n_symbol] "Mult 0..1
  The symbol to be used as (depending on the concrete case) either a complete replacement or a prefix.";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ImplementationProps;
  partial class Implementation "Description of an implementation a single software component or module."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Implementation;
  class Code "A generic code descriptor. The type of the code (source or object) is defined via the category attribute of\nthe associated engineering object"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_artifactDescriptor = 0 annotation (Dialog(connectorSizing = true));

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_callbackHeader = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ServiceNeeds.ServiceNeeds callbackHeader[n_callbackHeader];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Code;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Implementation;