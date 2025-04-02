within M2.AUTOSARTemplates.CommonStructure;
package ModeDeclaration
  class ModeDeclaration "Declaration of one Mode. The name and semantics of a specific mode is not defined in the meta-model."
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    annotation (Protection(access = Access.nonPackageDuplicate));



  end ModeDeclaration;
  class ModeDeclarationGroup "A collection of Mode Declarations. Also, the initial mode is explicitly identified.\nTags:atp.recommendedPackage=ModeDeclarationGroups"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_initialMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration initialMode[n_initialMode];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeDeclaration = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration modeDeclaration[n_modeDeclaration];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeManagerErrorBehavior = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeErrorBehavior modeManagerErrorBehavior[n_modeManagerErrorBehavior];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeTransition = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeTransition modeTransition[n_modeTransition];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeUserErrorBehavior = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeErrorBehavior modeUserErrorBehavior[n_modeUserErrorBehavior];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeDeclarationGroup;
  class ModeTransition "This meta-class represents the ability to describe possible ModeTransitions in the context of a Mode\nDeclarationGroup.\r"
    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_enteredMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration enteredMode[n_enteredMode];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_exitedMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration exitedMode[n_exitedMode];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeTransition;
  class ModeErrorBehavior "This represents the ability to define the error behavior in the context of mode handling."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_defaultMode = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclaration defaultMode[n_defaultMode];
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_errorReactionPolicy = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeErrorReactionPolicyEnum errorReactionPolicy[n_errorReactionPolicy];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeErrorBehavior;
  type ModeActivationKind = enumeration(onEntry, onExit, onTransition) "Kind of mode switch condition used for activation of an event, as further described for each\nenumeration field.";
  type ModeErrorReactionPolicyEnum = enumeration(defaultMode, lastMode) "This represents the ability to specify the reaction on a mode error.";
  class ModeDeclarationGroupPrototype "The ModeDeclarationGroupPrototype specifies a set 
of Modes (ModeDeclarationGroup) which is\nprovided or required in the given context.\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_initialMode = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwCalibrationAccessEnum initialMode[n_initialMode];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_type0 = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroup type0[n_type0];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeDeclarationGroupPrototype;
  class ModeRequestTypeMap "Specifies a mapping between a ModeDeclarationGroup and an ImplementationDataType.
This\nImplementationDataType shall be used to implement the ModeDeclarationGroup."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_implementationDataType = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ImplementationDataTypes.AbstractImplementationDataType implementationDataType[n_implementationDataType];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroup modeGroup[n_modeGroup];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeRequestTypeMap;
  class ModeDeclarationGroupPrototypeMapping "Defines the mapping of two
particular ModeDeclarationGroupPrototypes (in the given context) that 
are\nunequally named and/or require a reference to a ModeDeclarationMappingSet
in order to become\ncompatible by definition of ModeDeclarationMappings."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstModeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration firstModeGroup[n_firstModeGroup];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modeDeclarationMappingSet = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.ModeDeclarationMappingSet modeDeclarationMappingSet[n_modeDeclarationMappingSet];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondModeGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.CommonStructure.ModeDeclaration.ModeDeclarationGroupPrototype secondModeGroup[n_secondModeGroup];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ModeDeclarationGroupPrototypeMapping;
  annotation (Protection(access = Access.nonPackageDuplicate));
end ModeDeclaration;