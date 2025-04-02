within M2.MSR.AsamHdo;
package Units

  class Unit "This is a physical measurement unit. All units that might 
be defined should stem from SI units. In order to\nconvert one unit
into another factor and offset are defined.\nFor the calculation from
SI-unit to the defined unit the factor (factorSiToUnit ) and the offset
(offsetSiTo\nUnit ) are applied as follows:\nx [{unit}] := y * [{siUnit}]
* factorSiToUnit [[unit]/{siUnit}] + offsetSiToUnit [{unit}]\nFor the
calculation from a unit to SI-unit the reciprocal of the factor (factorSiToUnit ) 
and the negation of\nthe offset (offsetSiToUnit ) are applied.\ny {siUnit} := 
(x*{unit} - offsetSiToUnit [{unit}]) / (factorSiToUnit [[unit]/{siUnit}]\nTags:atp.recommendedPackage=Units"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_displayName = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.BswModuleTemplate.BswInterfaces.BswModuleEntry displayName[n_displayName];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_factorSiToUnit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.BswModuleTemplate.BswInterfaces.BswModuleEntry factorSiToUnit[n_factorSiToUnit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_offsetSiToUnit = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.BswModuleTemplate.BswInterfaces.BswModuleEntry offsetSiToUnit[n_offsetSiToUnit];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_physicalDimension = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.PhysicalDimension physicalDimension[n_physicalDimension];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end Unit;
  class PhysicalDimension "This class represents a physical dimension. If the physical 
dimension of two units is identical, then a\nconversion between them is possible. The
conversion between units is related to the definition of the\nphysical dimension.\nNote
that the equivalence of the exponents does not per se define the convertibility. For
example Energy\nand Torque share the same exponents (Nm).\nPlease note further the value
of an exponent does not necessarily have to be an integer number. It is\nalso possible
that the value yields a rational number, e.g. to compute the square root of a given 
physical\nquantity. In this case the exponent value would be a rational number where the
numerator value is 1 and\nthe denominator value is 2.\nTags:atp.recommendedPackage=PhysicalDimensions"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PhysicalDimension;
  class PhysicalDimensionMappingSet "This class represents a container for a list of mappings between PhysicalDimensions.\nTags:atp.recommendedPackage=PhysicalDimensionMappingSets\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_physicalDimensionMapping = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.PhysicalDimensionMapping physicalDimensionMapping[n_physicalDimensionMapping];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PhysicalDimensionMappingSet;
  class PhysicalDimensionMapping "This class represents a specific mapping between two PhysicalDimensions."

    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ArObject.ARObject;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_firstPhysicalDimension = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.PhysicalDimension firstPhysicalDimension[n_firstPhysicalDimension];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_secondPhysicalDimension = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.PhysicalDimension secondPhysicalDimension[n_secondPhysicalDimension];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PhysicalDimensionMapping;
  class UnitGroup "This meta-class represents the ability to specify
a logical grouping of units.The category denotes the unit\nsystem 
that the referenced units are associated to.\nIn this way, e.g. 
country-specific unit systems (CATEGORY=\"COUNTRY\") can be defined 
as well as\nspecific unit systems for certain application domains.\nIn
the same way a group of equivalent units, can be defined which are used
in different countries, by\nsetting CATEGORY=\"EQUIV_UNITS\". KmPerHour
and MilesPerHour could such be combined to one\ngroup named \"vehicle_speed\". 
The unit MeterPerSec would not belong to this group because it is\nnormally 
not used for vehicle speed. But all of the mentioned units could be combined
to one group\nnamed \"speed\".\nNote that the UnitGroup does not ensure the 
physical compliance of the units. This is maintained by the\nphysical dimension.\nTags:atp.recommendedPackage=UnitGroups\r"
    extends M2.AUTOSARTemplates.GenericStructure.GeneralTemplateClasses.ARPackage.ARElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_unit = 0 annotation (Dialog(connectorSizing = true));
    M2.MSR.AsamHdo.Units.Unit unit[n_unit];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end UnitGroup;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Units;