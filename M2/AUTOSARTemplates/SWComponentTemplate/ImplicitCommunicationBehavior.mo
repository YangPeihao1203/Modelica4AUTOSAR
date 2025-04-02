within M2.AUTOSARTemplates.SWComponentTemplate;
package ImplicitCommunicationBehavior

  class ConsistencyNeeds "This meta-class represents the ability to define
requirements on the implicit communication behavior."

    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dpgDoesNotRequireCoherency = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ImplicitCommunicationBehavior.DataPrototypeGroup dpgDoesNotRequireCoherency[n_dpgDoesNotRequireCoherency];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dpgRequiresCoherency = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ImplicitCommunicationBehavior.DataPrototypeGroup dpgRequiresCoherency[n_dpgRequiresCoherency];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_regDoesNotRequireStability = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ImplicitCommunicationBehavior.RunnableEntityGroup regDoesNotRequireStability[n_regDoesNotRequireStability];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_regRequiresStability = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ImplicitCommunicationBehavior.RunnableEntityGroup regRequiresStability[n_regRequiresStability];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ConsistencyNeeds;
  class RunnableEntityGroup "This meta-class represents the ability to define a collection
of RunnableEntities. The collection can be\nnested.\r"
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_runnableEntity = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity runnableEntity[n_runnableEntity];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_runnableEntityGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ImplicitCommunicationBehavior.RunnableEntityGroup runnableEntityGroup[n_runnableEntityGroup];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RunnableEntityGroup;



  class DataPrototypeGroup "This meta-class represents the ability to define a collection 
of DataPrototypes that are subject to the\nformal definition of implicit communication 
behavior. The definition of the collection can be nested."
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_dataPrototypeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.ImplicitCommunicationBehavior.DataPrototypeGroup dataPrototypeGroup[n_dataPrototypeGroup];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_implicitDataAccess = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype implicitDataAccess[n_implicitDataAccess];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DataPrototypeGroup;
  annotation (Protection(access = Access.nonPackageDuplicate));
end ImplicitCommunicationBehavior;