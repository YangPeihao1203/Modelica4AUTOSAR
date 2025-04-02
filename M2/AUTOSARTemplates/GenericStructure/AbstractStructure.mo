within M2.AUTOSARTemplates.GenericStructure;
package AbstractStructure
  partial class AtpFeature " Features are properties via which a classifier classifies instances. Or: a classifier has features and every
M0 instance of it will have those features."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    annotation (Protection(access = Access.nonPackageDuplicate));



  end AtpFeature;

  partial class AtpClassifier "A classifier classifies M0 instances according to their features. Or: a classifier is something that has instances - an M1 classifier has M0 instances"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
    //parameter M2.Utilities.MultiInterger.Interger0Unbound n_atpFeature = 0 annotation (Dialog(connectorSizing = true));
    /**
 AtpFeature atpFeature[n_atpFeature] "Mult: *
      This is a feature of the classifier.
      Stereotypes: atpDerived";
  **/
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AtpClassifier;
  partial class AtpStructureElement "A structure element is both a classifier and a feature. As a feature, its structure is given by the feature it owns as a classifier"
    extends AtpFeature;
    extends AtpClassifier;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AtpStructureElement;

  partial class AtpType "A type is a classifier that may serve to type prototypes. It is a resusable classifier."
    extends AtpClassifier;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AtpType;
  partial class AtpPrototype "A prototype is a typed feature. A prototype in a classifier indicates that instances of that classifier will have a feature, and the structure of that feature is given by the its type. An instance of that type will play the role indicated by the feature in the owning classifier.
A feature is not an instance but an indication of an instance-to-be"
    extends AtpFeature;
    /**
  AtpType atpType "This is the type of the feature";
  
  **/
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AtpPrototype;
  annotation (Protection(access = Access.nonPackageDuplicate));
end AbstractStructure;