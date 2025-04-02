within M2.MSR.Documentation;
package Annotation_pkg
  class Annotation "This is a plain annotation which does not have further formal data."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.GeneralAnnotation_pkg.GeneralAnnotation;
    annotation (Protection(access = Access.nonPackageDuplicate));



  end Annotation;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Annotation_pkg;