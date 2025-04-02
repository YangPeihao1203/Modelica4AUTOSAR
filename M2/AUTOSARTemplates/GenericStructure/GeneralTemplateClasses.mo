within M2.AUTOSARTemplates.GenericStructure;
package GeneralTemplateClasses
  package PrimitiveTypes
    type String = String "This represents a String in which white-space shall be normalized before processing. For example:
    in order to compare two Strings:
      1) leading and trailing white-space needs to be removed
      2) consecutive white-space(blank,cr,If,tab) needs to be replaced by one blank.
     Tags:
      xml.xsd.customType=STRING
      xml.xsd.type=string
      "
      annotation (Protection(access = Access.nonPackageDuplicate));
    type NameToken = String "This is an identifier as used in xml, e.g. xml-names. Typical usages are, for example, the names of type
                      emitters, protocols, or profiles. For details see NMTOKEN definition on the W3C website
                      (https://www.w3.org/TR/xml/#NT-Nmtoken).
                       Note: Although NameToken supports a wide range of characters, the actually allowed patterns for a
                       certain attribute typed by NameToken may be further restricted by the specification of that attribute.
                       Tags:
                       xml.xsd.customType=NMTOKEN-STRING
                       xml.xsd.type=NMTOKEN"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type DateTime = String(start = "2009-07-23T13:38:00Z") "A datatype representing a timestamp.The smallest granularity is 1 second.
     This datatype represents a timestamp in the format yyyy-mm-dd followed by an optional time. The lead-in character for the time is 
     'T' and the format is hh:mm:ss. In addition, a time zone designator shall be specified. The time zone designator can either be 'Z'(for UTC)
     or the time offset UTC,i.e. (+|-)hh.
     Examples:
      2009-07-23
      2009-07-23T14:38:00+01:00
      2009-07-23T13:38:00Z
     Tags:
      xml.xsd.customType=DATE
      xml.xsd.pattern=([0-9]{4}-[0-9]{2})(T[0-9]{2}:[0-9]{2}(Z|([0-9]{2}:[0-9]{2})))?
      xml.xsd.type=string
     "
      annotation (Protection(access = Access.nonPackageDuplicate));
    record Identifier "An Identifier is a string with a number of constraints on its appearance,satisfying the 
     requirements typical programming languages define for their Identifiers. This datatype represents a string,that can be used as a c-Identifier.
     It shall start with a letter,may consist of letters,digits and underscores.
     Tags:
      xml.xsd.customType=IDENTIFIER
      xml.xsd.maxLength=128
      xml.xsd.patter=[a-zA-Z][a-zA-Z-9_]*
      xml.xsd.type=string"
      parameter M2.Utilities.MultiInterger.Interger01 n_blueprintValue = 0 annotation (Dialog(connectorSizing = true));
      String blueprintValue[n_blueprintValue] "Mult 0..1 
      This represents a description that documents how the value shall be defined when derving objects from the blueprint.
     Tags:
     atp.Status=draft
     xml.attribute=true";
      parameter M2.Utilities.MultiInterger.Interger01 n_namePattern = 0 annotation (Dialog(connectorSizing = true));
      String namePattern[n_namePattern] "Mult 0..1
     This attribute represents a pattern which shall be used to define the value of the Identifier if the identifier in question is part of a blueprint.blueprint
     For more details refer to TPS_StandardizationTemplate.
     Tags:xml.attribute=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end Identifier;
    record CIdentifier "This datatype represents a string, that follows the rules of C-identifiers.
                      Tags:
                      xml.xsd.customType=C-IDENTIFIER
                      xml.xsd.pattern=[a-zA-Z_][a-zA-Z0-9_]*
                      xml.xsd.type=string"
      String blueprintValue "This represents a description that documents how the value shall be defined when deriving objects from the blueprint.
                                Tags:
                                atp.Status=draft
                                xml.attribute=true";
      parameter M2.Utilities.MultiInterger.Interger01 n_namePattern = 0 annotation (Dialog(connectorSizing = true));
      String namePattern[n_namePattern] "Mult: 0..1
                                This attribute represents a pattern which shall be used to define the value of the identifier if the CIdentifier in
                                question is part of a blueprint.
                                For more details refer to TPS_StandardizationTemplate.
                                Tags:xml.attribute=true
                                ";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end CIdentifier;

    type PositiveInteger = Integer(min = 0, max = 4294967295) "This is a positive integer which can be denoted in decimal, binary, octal and hexadecimal. The value is
                                      between 0 and 4294967295.
                                      Tags:
                                      xml.xsd.customType=POSITIVE-INTEGER
                                      xml.xsd.pattern=0|[\\+]?[1-9][0-9]*|0[xX][0-9a-fA-F]+|0[bB][0-1]+|0[0-7]+
                                      xml.xsd.type=string"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type TimeValue = Real(quantity = "second", unit = "s", displayUnit = "s") "This primitive type is taken for expressing time values. The numerical value is supposed to be interpreted in the physical unit second.
                                                                Tags:
                                                                    xml.xsd.customType=TIME-VALUE
                                                                    xml.xsd.type=double"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type RevisonLabelString = String "This primitive represents an internal AUTOSAR revision label which identifies an engineering object. It
                                    represents a pattern which
                                    • supports three integers representing from left to right MajorVersion, MinorVersion, PatchVersion.
                                    • may add an application specific suffix separated by one of '.', '_', ';'.
                                    Legal patterns are for example:
                                    • 4.0.0
                                    • 4.0.0.1234565
                                    • 4.0.0_vendor specific;13
                                    • 4.0.0;12
                                    Tags:
                                    xml.xsd.customType=REVISION-LABEL-STRING
                                    xml.xsd.pattern=[0-9]+\\.[0-9]+\\.[0-9]+([\\._;].*)?
                                    xml.xsd.type=string"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type VerbatimStringPlain = String "This primitive represents a string in which white-space needs to be preserved.
                                    This primitive is applied in cases where xml:space attribute cannot be provided by the primitive type but
                                    needs to be provided by the container class.
                                    This is in particular the case in applications of TR_APRXML_00024.
                                    Tags:
                                    xml.xsd.customType=VERBATIM-STRING-PLAIN
                                    xml.xsd.type=string
                                    xml.xsd.whiteSpace=preserve"
      annotation (Protection(access = Access.nonPackageDuplicate));
    // type TwoEnums = enumeration(one, two);
    type XmlSpaceEnum = enumeration(:);

    type Numerical = Integer "Tahis primitive specifies a numerical value. It can be denoted in different formats such as Decimal, Octal,
                          Hexadecimal, Float. See the xsd pattern for details.
                          The value can be expressed in octal, hexadecimal, binary representation. Negative numbers can only be
                          expressed in decimal or float notation.
                          Tags:
                          xml.xsd.customType=NUMERICAL-VALUE
                          xml.xsd.pattern=(0[xX][0-9a-fA-F]+)|(0[0-7]+)|(0[bB][0-1]+)|(([+\\-]?[1-9]
                          [0-9]+(\\.[0-9]+)?|[+\\-]?[0-9](\\.[0-9]+)?)([eE]([+\\-]?)[0-9]+)?)|\\.0|INF|-INF|NaN
                          xml.xsd.type=string"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type NameTokens = String "This is a white-space separated list of name tokens.
                          Tags:
                          xml.xsd.customType=NMTOKENS-STRING
                          xml.xsd.type=NMTOKENS"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type CategoryString = String "This represents the pattern applicable to categories.
                              It is basically the same as Identifier but has a different semantics. Therefore it is modeled as a primitive of its own.
                              Tags:
                              xml.xsd.customType=CATEGORY-STRING
                              xml.xsd.pattern=[a-zA-Z][a-zA-Z0-9_]*
                              xml.xsd.type=string"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type SectionInitializationPolicyType = String "SectionInitializationPolicyType describes the intended initialization of MemorySections. The following values are standardized in AUTOSAR Methodology:
                                                • INIT: To be used for (explicitly or not explicitly) initialized variables.
                                                • CLEARED: To be used for not explicitly initialized variables.
                                                • POWER-ON-CLEARED: To be used for variables that are not explicitly initialized (cleared)
                                                during normal start-up. Instead these are cleared only after power on reset.
                                                Please note that the values are defined similar to the representation of enumeration types in the XML schema to ensure backward compatibility.
                                                Tags:
                                                xml.xsd.customType=SECTION-INITIALIZATION-POLICY-TYPE
                                                xml.xsd.type=NMTOKEN"
      annotation (Protection(access = Access.nonPackageDuplicate));
    type ByteOrderEnum = enumeration(mostSignificantByteFirst, mostSignificantByteLast, opaque);
    type MonotonyEnum = enumeration(decreasing, increasing, monotonous, noMonotony, strictlyDecreasing, strictlyIncreasing, strictMonotonous);
    type IntervalTypeEnum = enumeration(closed, open);
    type ArgumentDirectionEnum = enumeration(in0, inout, out);
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PrimitiveTypes;
  package ArObject
    partial class ARObject "Implicit base class of all classes in meta-model."
      parameter M2.Utilities.MultiInterger.Interger01 n_checksum = 0 annotation (Dialog(connectorSizing = true));
      String checksum[n_checksum] "Mult:0..1 
      Checksum calculated by the user's tool environment for an ArObject. May be used in an own tool 
      environment to determine if an ArObject has changed. The checksum has no semantic meaning for an AUTOSAR model and 
      there is no requirement for AUTOSAR tools to manage the checksum. 
      Tags: 
          xml.attribute=true
          xml.name=S";
      parameter M2.Utilities.MultiInterger.Interger01 n_timestamp = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.DateTime timestamp[n_timestamp] "Mult:0..1
      Timestamp calculated by the user's tool environment for an ArObject.ARObject.
      May be used in an own tool environment to determine the last change of an ArObject. The timestamp 
      has no semantic meaning for an AUTOSAR model and there is no requirement for AUTOSAR tools to manage
      the timestamp.
      Tags:
        xml.attribute=true
        xml.name=T";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ArObject;
  package ARPackage
    partial class ARElement "An element that can be defined stand-alone, i.e. without being part of another element (except for packages of course.)"
      extends PackageableElement;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ARElement;
    partial class PackageableElement "This meta-class specifies the ability to be a member of an AUTOSAR package."
      annotation (Protection(access = Access.nonPackageDuplicate));
    end PackageableElement;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ARPackage;

  package Identifiable
    partial class Identifiable "Instances of this class can be referred to by their identifier(within the namespace borders).In additiion to this,
    Identifiables are objects which contribute significantly to the overall structure of an AUTOSAR description. In particular, Identifiables might contain Identifiables"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.MultilanguageReferrable;
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Referrable;
      parameter M2.Utilities.MultiInterger.Interger01 n_adminData = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.AsamHdo.AdminData.AdminData adminData[n_adminData] "Multi 0..1
                                                    This represents the administrative data for the identifiable object.
                                                    Stereotypes: atpSplitable
                                                    Tags:
                                                    atp.Splitkey=adminData
                                                    xml.sequenceOffset=-40";
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_annotation_ = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.Annotation_pkg.Annotation annotation_[n_annotation_] "Multi:* Possibility to provide additional notes while defining a model element (e.g. the ECU Configuration Parameter Values). These are not intended as documentation but
                                                                  are mere design notes.
                                                                  Tags:xml.sequenceOffset=-25";
      parameter M2.Utilities.MultiInterger.Interger01 n_category = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.CategoryString category[n_category] "Multi:0..1 The category is a keyword that specializes the semantics of the Identifiable. It affects the expected existence of attributes and the applicability of constraints.
                                                                                                         Tags:xml.sequenceOffset=-50";
      parameter M2.Utilities.MultiInterger.Interger01 n_desc = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.MultilanguageData.MultiLanguageOverviewParagraph desc[n_desc] "Multi:0..1 This represents a general but brief (one paragraph) description what the object in question is about. It is only one paragraph! Desc is intended to be collected into
                                                                                          overview tables. This property helps a human reader to identify the object in question. More elaborate documentation, (in particular how the object is built or used) should go to 'introduction'.
      
                                                                                    Tags:xml.sequenceOffset=-60 ";
      parameter M2.Utilities.MultiInterger.Interger01 n_introduction = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.BlockElements.DocumentationBlock introduction[n_introduction] "Multi:0..1
                                                                        This represents more information about how the object in question is built or is used. Therefore it is a DocumentationBlock.
                                                                        Tags:xml.sequenceOffset=-30";
      parameter M2.Utilities.MultiInterger.Interger01 n_uuid = 0 annotation (Dialog(connectorSizing = true));
      String uuid[n_uuid] "Multi:0..1 The purpose of this attribute is to provide a globally unique identifier for an instance of a meta-class. The values of this attribute should be globally unique strings prefixed by the type of identifier. For example, to include a
              DCE UUID as defined by The Open Group, the UUID would be preceded by 'DCE:'. The values of this attribute
              may be used to support merging of different AUTOSAR models. The form of the UUID (Universally Unique Identifier) is taken from a standard defined by the Open Group (was Open Software Foundation). This standard is
              widely used, including by Microsoft for COM (GUIDs) and by many companies for DCE, which is based on CORBA.
              The method for generating these 128-bit IDs is published in the standard and the effectiveness and uniqueness of the IDs is not in practice disputed. If the id namespace is
              omitted, DCE is assumed. An example is 'DCE:2fac1234-31f8-11b4-a222-08002b34c003'. The uuid attribute has no semantic meaning for an AUTOSAR model and there is no requirement for AUTOSAR tools to manage the timestamp.
              Tags:xml.attribute=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end Identifiable;
    partial class Referrable "Instances of this class can be referred to by their identifier(while adhering to namespace borders)"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Identifier shorName "This specifies an identifying shorName for the object.It needs to be unique within its context and is intended for 
  humans but even more for technical reference.
  Stereotypes:atpIdentityContributor
  Tags:
    xml.enforceMinMultiplicity=true
    xml.sequeceOffset=-100";
      parameter M2.Utilities.MultiInterger.Interger0Unbound n_shortNameFragment = 0 annotation (Dialog(connectorSizing = true));
      ShortNameFragment shortNameFragment[n_shortNameFragment] "Mult * 
  This specifies how the Referrable.shortName is composed of several ShortNameFragments.
  Tags:xml.sequenceOffset=-90";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end Referrable;
    class ShortNameFragment "This class describes how the Referrable.shortName is composed of several shortNameFragments"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.Identifier fragment "This specifies a single shortName(fragment) which is part of the composed shortName.";
      String rold "This specifies the role of fragment to define e.g. the order of the fragments
  Tags:xml.sequenceOffset=10";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end ShortNameFragment;

    partial class MultilanguageReferrable "Instances of this class can be referred to by their identifier (while adhering to namespace borders). They
    also may have a longName. But they are not considered to contribute substantially to the overall
    structure of an AUTOSAR description. In particular it does not contain other Referrables."
      extends Referrable;
      parameter M2.Utilities.MultiInterger.Interger01 n_longName = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.MultilanguageData.MultilanguageLongName longName[n_longName] "Mult 0..1
    This specifies the long name of the object. Long name is
    targeted to human readers and acts like a headline.
  ";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MultilanguageReferrable;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Identifiable;

  package ElementCollection
    partial class CollectableElement "This meta-class specifies the ability to be part of a specific AUTOSAR collection of ARPackages or ARElements.
                                    The scope of collection has been extended beyond CollectableElement with Revision 4.0.3. For
                                    compatibility reasons the name of this meta Class was not changed"
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.Identifiable.Identifiable;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end CollectableElement;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ElementCollection;


  package GeneralAnnotation_pkg
    partial class GeneralAnnotation "This class represents textual comments (called annotations) which relate to the object in which it is
                                    aggregated. These annotations are intended for use during the development process for transferring
                                    information from one step of the development process to the next one.
                                    The approach is similar to the 'yellow pads' ...
                                    This abstract class can be specialized in order to add some further formal properties."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      String annotationOrigin "This attribute identifies the origin of the annotation. It is an
                            arbitrary string since it can be an individual’s name as well
                            as the name of a tool or even the name of a process step.
                            Tags:xml.sequenceOffset=30";
      M2.MSR.Documentation.BlockElements.DocumentationBlock annotationText "This is the text of the annotation.
                                                                        Tags:xml.sequenceOffset=40";
      parameter M2.Utilities.MultiInterger.Interger01 n_lable = 0 annotation (Dialog(connectorSizing = true));
      M2.MSR.Documentation.TextModel.MultilanguageData.MultilanguageLongName lable[n_lable] "Multi 0..1 This is the headline for the annotation.
                                                                         Tags:xml.sequenceOffset=20";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end GeneralAnnotation;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end GeneralAnnotation_pkg;
  package MultidimensionalTime

    class MultidimensionalTime "This is used to specify a multidimensional time value based on ASAM 
CSE codes. It is specified by a\ncode which defined the basis of the time and a scaling factor
which finally determines the time value.\nIf for example the cseCode is 100 and the cseCodeFactor
is 360, it represents 360 angular degrees. If\nthe cseCode is 0 and the cseCodeFactor is 50 it represents 50 microseconds.\r"

      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_cseCode = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.Datatype.DataPrototypes.VariableDataPrototype cseCode[n_cseCode];

      parameter M2.Utilities.MultiInterger.Interger0Unbound n_cseCodeFactor = 0 annotation (Dialog(connectorSizing = true));
      M2.AUTOSARTemplates.SWComponentTemplate.PortInterface.MetaDataItem cseCodeFactor[n_cseCodeFactor];
      annotation (Protection(access = Access.nonPackageDuplicate));
    end MultidimensionalTime;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end MultidimensionalTime;
  annotation (Protection(access = Access.nonPackageDuplicate));
end GeneralTemplateClasses;