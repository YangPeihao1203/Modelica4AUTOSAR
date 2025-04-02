within M2.MSR.AsamHdo;
package AdminData
  class Modification
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    M2.MSR.Documentation.TextModel.MultilanguageData.MultiLanguageOverviewParagraph change "This property denotes the one particular change which was performed on the object. Tags:xml.sequenceOffset=20";
    parameter M2.Utilities.MultiInterger.Interger01 n_reason = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.Documentation.TextModel.MultilanguageData.MultiLanguageOverviewParagraph reason[n_reason] "Multi0..1 This property denotes the one particular change which was performed on the object.
                                                                                              Tags:xml.sequenceOffset=20";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Modification;
  class DocRevision "This meta-class represents the ability to maintain information which relates to revision management of documents or objects."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.DateTime date "This specifies the date and time, when the object in question was released
                                                                                              Tags:xml.sequenceOffset=80";
    parameter M2.Utilities.MultiInterger.Interger01 n_issuedBy = 0 annotation (Dialog(connectorSizing = true));
    String issuedBy[n_issuedBy] "Multi 0..1
                      This is the name of an individual or an organization who issued the current revision of the document or document fragment.
                      Tags:xml.sequenceOffset=60";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_modification = 0 annotation (Dialog(connectorSizing = true));
    Modification modification[n_modification] "Multi *
                                This property represents one particular modification in comparison to its predecessor.
                                Tags:
                                xml.roleElement=true
                                xml.roleWrapperElement=true
                                xml.sequenceOffset=100
                                xml.typeElement=false
                                xml.typeWrapperElement=false";
    parameter M2.Utilities.MultiInterger.Interger01 n_revisionLabel = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.RevisonLabelString revisionLabel[n_revisionLabel] " Multi 0..1 This attribute represents the version number of the object.
                                                                                                                  Tags:xml.sequenceOffset=20";
    parameter M2.Utilities.MultiInterger.Interger01 n_revisionLabelP1 = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.RevisonLabelString revisionLabelP1[n_revisionLabelP1] "Multi 0..1 This attribute represents the version number of the object.
                                                                                                                    Tags:xml.sequenceOffset=20";
    parameter M2.Utilities.MultiInterger.Interger01 n_revisionLabelP2 = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.RevisonLabelString revisionLabelP2[n_revisionLabelP2] "Multi 0..1 This attribute represents the version number of the second predecessor of the object. This attribute is used if the object is the result of a merge process in which two branches are merged in to one new revision.
                                                                                                                    Tags:xml.sequenceOffset=40";
    parameter M2.Utilities.MultiInterger.Interger01 n_state = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NameToken state[n_state] "Multi 0..1 The attribute state represents the current state of the current file according to the configuration management plan. It is a NameToken until possible states are standardized. Tags:xml.sequenceOffset=50";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DocRevision;
  class AdminData "AdminData represents the ability to express administrative information and custom extensions for an element. This administration information is to be treated as meta-data such as revision id or state of the file. There are basically the following kinds of meta-data
                  • The language and/or used languages.
                  • Revision information covering e.g. revision number, state, release date, changes. Note that this information can be given in general as well as related to a particular company.
                  • Document meta-data specific for a company Beside that a custom extension of model-data is possible by
                  • Special data"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_docRevision = 0 annotation (Dialog(connectorSizing = true));
    DocRevision docRevision[n_docRevision] "(ordered)Multi: * This allows to denote information about the current revision of the object.
                              Note that information about previous revisions can also be logged here. The entries shall be sorted descendant
                              by date in order to reflect the history. Therefore the most recent entry representing the current version is denoted first.
                              Tags:
                              xml.roleElement=true
                              xml.roleWrapperElement=true
                              xml.sequenceOffset=50
                              xml.typeElement=false
                              xml.typeWrapperElement=false";
    parameter M2.Utilities.MultiInterger.Interger0Unbound n_language = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.Documentation.TextModel.LanguageDataModel.LEnum language[n_language] "Multi: 0..1 This attribute specifies the master language of the
                                                                      document or the document fragment. The master language is the one in which the document is maintained
                                                                      and from which the other languages are derived from. In particular in case of inconsistencies, the information in
                                                                      the master language is priority.
                                                                      Tags:xml.sequenceOffset=20";
    parameter M2.Utilities.MultiInterger.Interger01 n_sdg = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.SpecialData.Sdg sdg[n_sdg] "Multi: 0..1 This property allows to keep special data which is not represented by the standard model. It can be utilized to keep e.g. tool specific data.
                                          Stereotypes: atpSplitable
                                          Tags:
                                          atp.Splitkey=sdg
                                          xml.roleElement=true
                                          xml.roleWrapperElement=true
                                          xml.sequenceOffset=60
                                          xml.typeElement=false
                                          xml.typeWrapperElement=false";
    parameter M2.Utilities.MultiInterger.Interger01 n_usedLanguages = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.Documentation.TextModel.MultilanguageData.MultiLanguagePlainText usedLanguages[n_usedLanguages] "Multi: 0..1 This property specifies the languages which are provided
                                                                                              in the document. Therefore it should only be specified in the top level admin data. For each language provided in the document there is one entry in MultilanguagePlain Text. The content of each entry can be used for
                                                                                              illustration of the language. The used language itself depends on the language attribute in the entry.
                                                                                              Tags:xml.sequenceOffset=30";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end AdminData;
  annotation (Protection(access = Access.nonPackageDuplicate));
end AdminData;