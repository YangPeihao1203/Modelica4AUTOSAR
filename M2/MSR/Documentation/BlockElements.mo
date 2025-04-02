within M2.MSR.Documentation;
package BlockElements
  package PaginationAndView
    type ViewTokens = String "This primitive specifies the tokens to specify a documentation view.
                            Tags:
                            xml.xsd.customType=VIEW-TOKENS
                            xml.xsd.pattern=(-?[a-zA-Z_]+)(( )+-?[a-zA-Z_]+)*
                            xml.xsd.type=string"
      annotation (Protection(access = Access.nonPackageDuplicate));
    partial class DocumentViewSelectable "This meta-class represents the ability to be dedicated to a particular audience or document view."
      extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
      M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.PrimitiveTypes.NameTokens si "This attribute allows to denote a semantic information
                                                                                              which is used to identify documentation objects to be selected in customizable document views. It shall be defined in agreement between the involved parties.
                                                                                              Tags:xml.attribute=true";
      parameter M2.Utilities.MultiInterger.Interger01 n_view = 0 annotation (Dialog(connectorSizing = true));
      ViewTokens view[n_view] " Multi:0..1,This attribute lists the document views in which the object shall appear. If it is missing, the object appears in all document views.
                        Tags:xml.attribute=true";
      annotation (Protection(access = Access.nonPackageDuplicate));
    end DocumentViewSelectable;
    type ChapterEnumBreak = enumeration(yesbreak  "This indicates the a page break shall be applied before the current block. Tags:atp.EnumerationLiteralIndex=0", 
      noBreak  "This indicates that there is no need to force a page break before this block. Tags:atp.EnumerationLiteralIndex=1") "This allows to specify the page break policy of a paginatable element";
    type KeepWithPreviousEnum = enumeration(keep  "This indicates that the block shall be kept together with the previous block. Tags:atp.EnumerationLiteralIndex=0", 
      nokeep  "This indicates that there is no need to keep the block with the previous one. This is the same as if the attribute itself is missing.
  Tags:atp.EnumerationLiteralIndex=1") "This enumerator specifies a page break policy by controlling blocks which shall be kept together";
    partial class Paginateable "This meta-class represents the ability to control the pagination policy when creating documents"
      extends DocumentViewSelectable;
      annotation (Protection(access = Access.nonPackageDuplicate));
    end Paginateable;
    parameter M2.Utilities.MultiInterger.Interger01 n_break_ = 0 annotation (Dialog(connectorSizing = true));
    ChapterEnumBreak break_[n_break_] "Multi:0..1 This attributes allows to specify a forced page break.
                              Tags:xml.attribute=true";
    KeepWithPreviousEnum keepWithPrevious "Multi:0..1 This attribute denotes the pagination policy. In particular it defines if the containing text block shall be kept together with the previous block. Tags:xml.attribute=true";
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PaginationAndView;
  class DocumentationBlock "This class represents a documentation block. It is made of basic text structure elements which can be displayed in a table cell"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end DocumentationBlock;
  annotation (Protection(access = Access.nonPackageDuplicate));
end BlockElements;