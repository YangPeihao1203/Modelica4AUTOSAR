within M2.AUTOSARTemplates.CommonStructure;
package TriggerDeclaration

  class Trigger "A trigger which is provided (i.e. released) or required (i.e. used to activate something) in the given\ncontext."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swImplPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwImplPolicyEnum swImplPolicy[n_swImplPolicy];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_triggerPeriod = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.MultidimensionalTime.MultidimensionalTime triggerPeriod[n_triggerPeriod];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Trigger;
  class TriggerMapping "Defines the mapping of two particular unequally named Triggers in the given context"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstTrigger = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger firstTrigger[n_firstTrigger];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondTrigger = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.TriggerDeclaration.Trigger secondTrigger[n_secondTrigger];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end TriggerMapping;
  annotation (Protection(access = Access.nonPackageDuplicate));
end TriggerDeclaration;