within M2.MSR.AsamHdo;
package SpecialData
  class SdgCaption "This meta-class represents the caption of a special data group. This allows to have some parts of special data as identifiable."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.MultilanguageReferrable;
    parameter M2.Utilities.MultiInterger.Interger01 n_desc = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.Documentation.TextModel.MultilanguageData.MultiLanguageOverviewParagraph desc[n_desc] "Multi:0..1 This represents a general but brief (one paragraph) description what the special data in question is about. It isonly one paragraph! Desc is intended to be collected into overview tables. This property helps 
  a human reader toidentify the special data in question.";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SdgCaption;
  class SdgContents "This meta-class represents the possible contents of a special data group. It can be an arbitrary mix of references, of primitive special data and nested special data groups."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger01 n_sd = 0 annotation (Dialog(connectorSizing = true));
    Sd sd[n_sd] "Multi: 0..1
                This is one particular special data element.
                Tags:xml.sequenceOffset=40";
    parameter M2.Utilities.MultiInterger.Interger01 n_sdf = 0 annotation (Dialog(connectorSizing = true));
    Sdf sdf[n_sdf] "Multi:0..1
                This is one particular special data element.
                Tags:xml.sequenceOffset=60";
    parameter M2.Utilities.MultiInterger.Interger01 n_sdg = 0 annotation (Dialog(connectorSizing = true));
    /**   Sdg sdg[n_sdg] "Multi:0..1
  This aggregation allows to express nested special data groups. By this, any structure can be represented in SpeicalData. Stereotypes: atpSplitable; atpVariation
                  Tags:
                  atp.Splitkey=sdg, sdg.variationPoint.shortLabel
                  vh.latestBindingTime=postBuild
                  xml.sequenceOffset=50";
**/
    /**
  parameter M2.Utilities.MultiInterger.Interger01 n_sdx = 0 annotation (Dialog(connectorSizing = true));
  M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Referrable sdx[n_sdx] "Multi: 0..1
                    Reference to any identifiable element. This allows to use
                    Sdg even to establish arbitrary relationships";
  parameter M2.Utilities.MultiInterger.Interger01 n_sdxf = 0 annotation (Dialog(connectorSizing = true));
  M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Referrable sdxf[n_sdxf] "Multi: 0..1
                  Additional reference with variant support.
                  Stereotypes: atpSplitable; atpVariation
                  Tags:
                  atp.Splitkey=sdxf.referrable, sdxf.variationPoint.short
                  Label
                  vh.latestBindingTime=postBuild";
**/
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SdgContents;
  class Sd "This class represents a primitive element in a special data group"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NameToken gid "This attributes specifies an identifier. Gid comes from the
                                                                                                      SGML/XML-Term 'Generic Identifier' which is the element name in XML. The role of this attribute is the same as the name of an XML - element.
                                                                                                      Tags:xml.attribute=true";
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.VerbatimStringPlain value "This is the value of the special data.
                                                                                                                  Tags:
                                                                                                                  xml.roleElement=false
                                                                                                                  xml.roleWrapperElement=false
                                                                                                                  xml.typeElement=false
                                                                                                                  xml.typeWrapperElement=false";
    parameter M2.Utilities.MultiInterger.Interger01 n_xmlSpace = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.XmlSpaceEnum xmlSpace[n_xmlSpace] "Multi:0..1
                                                                                                                This attribute is used to signal an intention that in that element, white space should be preserved by applications. It is defined according to xml:space as declared by W3C.
                                                                                                                Tags:
                                                                                                                xml.attribute=true
                                                                                                                xml.attributeRef=true
                                                                                                                xml.enforceMinMultiplicity=true
                                                                                                                xml.name=space
                                                                                                                xml.nsPrefix=xml";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Sd;
  class Sdf "This class represents a numerical value in a special data group which may be subject to variability."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NameToken gid "This attributes specifies an identifier. Gid comes from the
                                                                                              SGML/XML-Term 'Generic Identifier' which is the
                                                                                              element name in XML. The role of this attribute is the
                                                                                              same as the name of an XML - element.
                                                                                              Tags:xml.attribute=true";
    parameter M2.Utilities.MultiInterger.Interger01 n_value = 0 annotation (Dialog(connectorSizing = true));

    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Numerical value[n_value] "Multi 0..1
                                                                                              This is the value of the special data. Stereotypes: atpVariation
                                                                                              Tags:vh.latestBindingTime=preCompileTime ";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Sdf;
  class Sdg "Sdg (SpecialDataGroup) is a generic model which can be used to keep arbitrary information which is not explicitly modeled in the meta-model.
Sdg can have various contents as defined by sdgContentsType. Special Data should only be used moderately since all elements should be defined in the meta-model.
Thereby SDG should be considered as a temporary solution when no explicit model is available. If an sdg Caption is available, it is possible to establish a reference to the sdg structure."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NameToken gid "This attributes specifies an identifier. Gid comes from the
                                  SGML/XML-Term 'Generic Identifier' which is the
                                  element name in XML. The role of this attribute is the
                                  same as the name of an XML - element.
                                  Tags:xml.attribute=true";
    parameter M2.Utilities.MultiInterger.Interger01 n_sdgCaption = 0 annotation (Dialog(connectorSizing = true));

    SdgCaption sdgCaption[n_sdgCaption] "Mult:0..1 This aggregation allows to assign the properties of
                                  Identifiable to the sdg. By this, a shortName etc. can be
                                  assigned to the Sdg.
                                  Tags:xml.sequenceOffset=20";
    parameter M2.Utilities.MultiInterger.Interger01 n_sdgContents = 0 annotation (Dialog(connectorSizing = true));

    SdgContents sdgContents[n_sdgContents] "Mult:0..1 This is the content of the Sdg.
                                  Tags:
                                  xml.roleElement=false
                                  xml.roleWrapperElement=false
                                  xml.sequenceOffset=30
                                  xml.typeElement=false
                                  xml.typeWrapperElement=false";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Sdg;
  annotation (Protection(access = Access.nonPackageDuplicate));
end SpecialData;