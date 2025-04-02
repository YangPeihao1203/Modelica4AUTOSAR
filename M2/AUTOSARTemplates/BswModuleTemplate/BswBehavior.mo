within M2.AUTOSARTemplates.BswModuleTemplate;
package BswBehavior

  class BswInternalBehavior "Specifies the behavior of a BSW module or a BSW cluster w.r.t. the code entities visible by the BSW\nScheduler. It is possible to have several different BswInternalBehaviors referring to the same BswModule\nDescription."
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.UTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_arTypedPerInstanceMemory = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype arTypedPerInstanceMemory[n_arTypedPerInstanceMemory];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end BswInternalBehavior;
  annotation (Protection(access = Access.nonPackageDuplicate));
end BswBehavior;