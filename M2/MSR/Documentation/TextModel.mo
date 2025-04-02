within M2.MSR.Documentation;
package TextModel
  package LanguageDataModel
    type LEnum = enumeration(aa  "Afar Tags:atp.enumerationLiteralIndex=0", 
      ab  "Abkhazian Tags:atp.EnumerationLiteralIndex=1") "This denotes the possible language designators according to the two letter code of ISO 639";

    partial class LanguageSpecific "This meta-class represents the ability to denote a particular for which an object is applicable"
      LEnum l "’This attribute denotes the language in which the
                        language specific document entity is given. Note that
                        'FOR-ALL' means, that the entity is applicable to all
                        languages. It is language neutral.
                        It follows ISO 639-1:2002 and is specified in upper case.
                        Tags:
                        xml.attribute=true
                        xml.enforceMinMultiplicity=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end LanguageSpecific;
    class LLongName "MixedContentForLongNames in one particular language. The language is denoted in the attribute l."
      extends M2.MSR.Documentation.TextModel.LanguageDataModel.LanguageSpecific;
      extends M2.MSR.Documentation.TextModel.InlineTextElements.MixedContentForLongName;
      parameter M2.Utilities.MultiInterger.Interger01 n_blueprintValue = 0 annotation (Dialog(connectorSizing = true));
      String blueprintValue[n_blueprintValue] "Multi 0..1
                          This represents a description that documents how the value shall be defined when deriving objects from the blueprint.
                          Tags:
                          atp.Status=draft
                          xml.attribute=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end LLongName;
    class LOverviewParagraph "MixedContentForOverviewParagraph in one particular language. The language is denoted in the attributel."
      extends LanguageSpecific;
      extends M2.MSR.Documentation.TextModel.InlineTextModel.MixedContentForOverviewParagraph;
      parameter M2.Utilities.MultiInterger.Interger01 n_blueprintValue = 0 annotation (Dialog(connectorSizing = true));
      String blueprintValue[n_blueprintValue] "
                            Multi 0..1
                            This represents a description that documents how the value shall be defined when deriving objects from the blueprint.
                            Tags:
                            atp.Status=draft
                            xml.attribute=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end LOverviewParagraph;
    class LPlainText "This represents plain string in one particular language. The language is denoted in the attribute l."
      extends LanguageSpecific;
      extends M2.MSR.Documentation.TextModel.InlineTextModel.MixedContentForPlainText;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end LPlainText;
    partial class WhitespaceControlled "This meta-class represents the ability to control the white-space handling e.g. in xml serialization. This is implemented by adding the attribute 'space'."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.XmlSpaceEnum xmlSpace "This attribute is used to signal an intention that in that element, white space should be preserved by applications. It is defined according to xml:space as declared by W3C.
                                                                                                    Tags:
                                                                                                    xml.attribute=true
                                                                                                    xml.attributeRef=true
                                                                                                    xml.enforceMinMultiplicity=true
                                                                                                    xml.name=space
                                                                                                    xml.nsPrefix=xml";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end WhitespaceControlled;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end LanguageDataModel;
  package InlineTextElements "This meta-class represents the ability to express specific technical terms. The kind of term is denoted in
the attribute 'type'."

    class Tt
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      String term "This is the term itself.
                Tags:
                xml.roleElement=false
                xml.roleWrapperElement=false
                xml.typeElement=false
                xml.typeWrapperElement=false";
      String texRender "This attribute holds information how the content
                    (represented by attribute 'term') of the particular
                      technical term is rendered using LaTeX. This allows to
                      inject specific LaTeX commands such as \\sep{}. An
                      example is to render 'MyClass' as 'My\\sep{}Class'.
                      Default is the value of the attribute 'term'.
                      Tags:xml.attribute=true";
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NameToken type_ "This attribute specifies the type of the technical term.
                                                                                                      Values are such as 'VARIABLE' 'CALPRM'. It is no
                                                                                                      longer an enum in order to support process specific                                                                                                  extensions.
                                                                                                      Tags:xml.attribute=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end Tt;

    class Superscript "This is text which is rendered superscript or subscript depending on the role.
                      Tags:
                      xml.xsd.customType=SUPSCRIPT
                      xml.xsd.type=string"
      annotation (Protection(access = Access.nonPackageDuplicate));
    end Superscript;

    class IndexEntry "This class represents an index entry"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      Superscript sub "This is subscript text.
                          Tags:xml.sequenceOffset=40";
      Superscript sup "This is superscript text.
                          Tags:xml.sequenceOffset=30";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end IndexEntry;


    class EmphasisText "This is an emphasized text. As a compromise it contains some rendering oriented attributes such as color and font."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger01 n_color = 0 annotation (Dialog(connectorSizing = true));
      String color[n_color] "Multi 0..1 
                          This allows to recommend a color of the emphasis. It is
                          specified bases on 6 digits RGB hex-code.
                          Tags:xml.attribute=true";
      parameter M2.Utilities.MultiInterger.Interger01 n_font = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.InlineAttributeEnums.EEnumFont font[n_font] "Multi 0..1
      This specifies the font style in which the emphasized text shall be rendered. Tags:xml.attribute=true";
      M2.MSR.Documentation.TextModel.InlineTextElements.Superscript sub "this is subscript text";
      M2.MSR.Documentation.TextModel.InlineTextElements.Superscript sup "This is superscript text";
      parameter M2.Utilities.MultiInterger.Interger01 n_tt = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.InlineTextElements.Tt tt[n_tt] "Multi 0..1
      This is a technical term. Tags:xml.sequenceOffset=30";
      parameter M2.Utilities.MultiInterger.Interger01 n_type_ = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.InlineAttributeEnums.EEnum type_[n_type_] "Multi 0..1
                                                                            Indicates how the text may be emphasized. Note that this
                                                                            is only a proposal which can be overridden or ignored by
                                                                            particular formatting engines. Default is BOLD.
                                                                            Tags:xml.attribute=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end EmphasisText;
    partial class MixedContentForLongName "This is the model for titles and long-names. It allows some emphasis and index entries but no reference target (which is provided by the identifiable in question). It is intended that the content model can also be rendered as plain text.
The abstract class can be used for single language as well as for multilanguage elements"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      EmphasisText e "This is emphasized text Tags:xml.sequenceOffset=40";
      IndexEntry ie "This is an index entry. Tags:xml.sequenceOffset=70";
      Superscript sub "This is subscript text. Tags:xml.sequenceOffset=60";
      Superscript sup "This is superscript text. Tags:xml.sequenceOffset=50";
      Tt tt "This is a technical term. Tags:xml.sequenceOffset=30";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MixedContentForLongName;
    class Br "This element is the same as function here as in a HTML document i.e. it forces a line break."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end Br;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end InlineTextElements;
  package InlineAttributeEnums
    type EEnum = enumeration(bold  "The emphasis is preferably represented in boldface font.
                Tags:atp.EnumerationLiteralIndex=0", 
      bolditalic  "The emphasis is preferably represented in boldface plus italic font.
            Tags:atp.EnumerationLiteralIndex=1", 
      italic  "The emphasis is preferably represented in italic font.
            Tags:atp.EnumerationLiteralIndex=2", 
      plain  "The emphasis has no specific rendering. It is used if e.g. semantic information is applied to the
          emphasis text.
           Tags:atp.EnumerationLiteralIndex=3") "This specifies the possible kinds of emphasis as proposal how to render it on paper or screen. Note
                                that it would have been better to use plain, weak (italic), strong (bold), veryStrong (bolditalic) ... But
                                users complained about this.";

    type EEnumFont = enumeration(default  "The emphasis uses the default font. 
                                              Tags:atp.EnumerationLiteralIndex=0", 
      mono  "The emphasis uses a monospaced font.
                  Tags:atp.EnumerationLiteralIndex=1") "This specifies the possible kind of fonts to be used for emphasis.";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end InlineAttributeEnums;
  package MultilanguageData
    class MultilanguageLongName
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger1Unbound n_l4 = 1 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.LanguageDataModel.LLongName l4[n_l4] "Multi 1..*
  This is the long name in one particular language.
    Tags:
    xml.roleElement=true
    xml.roleWrapperElement=false
    xml.sequenceOffset=20
    xml.typeElement=false
    xml.typeWrapperElement=false
  ";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MultilanguageLongName;
    class MultiLanguageOverviewParagraph "This is the content of a multilingual paragraph in an overview item"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      M2.MSR.Documentation.TextModel.LanguageDataModel.LOverviewParagraph l2 "This represents the text in one particular language.
                                                                        Tags:
                                                                        xml.roleElement=true
                                                                        xml.roleWrapperElement=false
                                                                        xml.sequenceOffset=20
                                                                        xml.typeElement=false
                                                                        xml.typeWrapperElement=false";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MultiLanguageOverviewParagraph;
    class MultiLanguagePlainText "This is a multilingual plaint Text.It is intended to be rendered as a paragraph"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      parameter M2.Utilities.MultiInterger.Interger1Unbound n_l10 = 1 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.LanguageDataModel.LPlainText l10[n_l10] "Multi:1..*
                                                                      This is the plain text in one particular language.
                                                                      Tags:
                                                                      xml.roleElement=true
                                                                      xml.roleWrapperElement=false
                                                                      xml.sequenceOffset=20
                                                                      xml.typeElement=false
                                                                      xml.typeWrapperElement=false";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MultiLanguagePlainText;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end MultilanguageData;
  package InlineTextModel
    partial class MixedContentForOverviewParagraph "This is the text model of a restricted paragraph item within a documentation. Such restricted paragraphs
are used mainly for overview items, e.g. desc."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MixedContentForOverviewParagraph;
    partial class MixedContentForPlainText "This represents a plain text which conceptually is handled as mixed contents. It is modeled as such for symmetry reasons"
      extends M2.MSR.Documentation.TextModel.LanguageDataModel.WhitespaceControlled;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MixedContentForPlainText;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end InlineTextModel;
  annotation (Protection(access = Access.nonPackageDuplicate));
end TextModel;