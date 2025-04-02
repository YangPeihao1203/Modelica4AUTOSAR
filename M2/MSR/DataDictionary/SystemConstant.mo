within M2.MSR.DataDictionary;
package SystemConstant

  class SwSystemconst "This element defines a system constant which serves an input to
select a particular variation point. In\nparticular a system constant serves as an operand 
of the binding function (swSyscond) in a Variation\npoint.\nNote that the binding process
can only happen if a value was assigned to to the referenced system\nconstants.
\nTags:atp.recommendedPackage=SwSystemconsts\r"

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_swDataDefProps = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.DataDictionary.DataDefProperties.SwDataDefProps swDataDefProps[n_swDataDefProps];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SwSystemconst;
  annotation (Protection(access = Access.nonPackageDuplicate));
end SystemConstant;