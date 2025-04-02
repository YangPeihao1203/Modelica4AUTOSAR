within M2.MSR.AsamHdo;
package ComputationMethod
  class Compu "This meta-class represents the ability to express one particular computation."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuContent = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuContent compuContent[n_compuContent];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuDefaultValue = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuConst compuDefaultValue[n_compuDefaultValue];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Compu;
  partial class CompuContent "This abstract meta-class represents the various definition means of a computation method."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuContent;
  class CompuScale "This meta-class represents the ability to specify one segment of a segmented computation method."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuInverseValue = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuConst compuInverseValue[n_compuInverseValue];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuScaleContents = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuScaleContents compuScaleContents[n_compuScaleContents];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuScale;
  class CompuScales "This meta-class represents the ability to stepwise express a computation method."
    extends M2.MSR.AsamHdo.ComputationMethod.CompuContent;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuScale = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuScale compuScale[n_compuScale];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuScales;
  partial class CompuScaleContents "This abstract meta-class represents the content of one particular scale."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuScaleContents;
  class CompuRationalCoeffs "This meta-class represents the ability to express a rational function by specifying the coefficients of\nnominator and denominator."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuDenominator = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuNominatorDenominator compuDenominator[n_compuDenominator];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuNumerator = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuNominatorDenominator compuNumerator[n_compuNumerator];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuRationalCoeffs;
  class CompuConst "This meta-class represents the fact that the value of a computation method scale is constant."
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuConstContentType = 0 annotation (Dialog(connectorSizing = true));
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuConst;
  class CompuScaleRationalFormula "This meta-class represents the fact that the computation in this scale is represented as rational term"
    extends M2.MSR.AsamHdo.ComputationMethod.CompuScaleContents;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuRationalCoeffs = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuRationalCoeffs compuRationalCoeffs[n_compuRationalCoeffs];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuScaleRationalFormula;
  class CompuScaleConstantContents "This meta-class represents the fact that a particular scale of the computation method is constant."
    extends M2.MSR.AsamHdo.ComputationMethod.CompuScaleContents;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_compuConst = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.ComputationMethod.CompuConst compuConst[n_compuConst];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuScaleConstantContents;
  class CompuNominatorDenominator "This class represents the ability to express a polynomial either as Nominator or as Denominator"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_v = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.BswModuleTemplate.BswInterfaces.BswModuleEntry v[n_v];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end CompuNominatorDenominator;
  annotation (Protection(access = Access.nonPackageDuplicate));
end ComputationMethod;