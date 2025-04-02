within M2.AUTOSARTemplates.CommonStructure;
package StandardizationTemplate
  package AbstractBlueprintStructure
    partial class BlueprintPolicy "This meta-class represents the ability to indicate whether blueprintable elements will be modifiable or not modifiable."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      String attributeName "This identifies the related attribute of a BlueprintPolicy. For navigation over the model a subset of xpath expressions is used.";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end BlueprintPolicy;
    partial class AtpBlueprintable "This meta-class represents the ability to be derived from a Blueprint. As this class is an abstract one,
particular blueprintable meta-classes inherit from this one"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AtpBlueprintable;
    partial class AtpBluePrint "This meta-class represents the ability to act as a Blueprint. As this class is an abstract one, particular
blueprint meta-classes inherit from this one."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
      /**
  BlueprintPolicy blueprintPolicy[n_blueprintPolicy] "Mult:0..1
      This identifies the related attribute of a BlueprintPolicy. For navigation over the model a subset of xpath expressions is used.";
  **/
      parameter M2.Utilities.MultiInterger.Interger01 n_blueprintPolicy = 0 annotation (Dialog(connectorSizing = true));
      String shortNamePattern[n_blueprintPolicy] "  Mult 0..1
                                                This attribute represents the pattern which shall
                                                be used to build the shortName of the derived elements. As of now it is modeled as a String. In general it should follow the pattern:
                                                pattern = (placeholder | namePart)*
                                                placeholder = '{' namePart '}'
                                                namePart = identifier | '_'
                                                This is subject to be refined in subsequent versions.
                                                Note that this is marked as obsolete. Use the xml
                                                attribute namePattern instead as it applies to Identifier and CIdentifier (shortName, symbol etc.)
                                                Tags: atp.Status=obsolete";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end AtpBluePrint;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AbstractBlueprintStructure;
  annotation (Protection(access = Access.nonPackageDuplicate));
end StandardizationTemplate;