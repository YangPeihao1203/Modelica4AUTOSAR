within M2.AUTOSARTemplates.SWComponentTemplate;
package Components

  class SensorActuatorSwComponentType "The SensorActuatorSwComponentType introduces the possibility to link from the software representation\nof a sensor/actuator to its hardware description provided by the ECU Resource Template.\nTags:atp.recommendedPackage=SwComponentTypes"
    extends M2.AUTOSARTemplates.SWComponentTemplate.Components.AtomicSwComponentType;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_sensorActuator = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.EcuResourceTemplate.HwDescriptionEntity sensorActuator[n_sensorActuator];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SensorActuatorSwComponentType;

  class ComplexDeviceDriverSwComponentType "The ComplexDeviceDriverSwComponentType is a special AtomicSwComponentType that has direct\naccess to hardware on an ECU and which is therefore linked to a specific ECU or specific hardware. The\nComplexDeviceDriverSwComponentType introduces the possibility to link from the software\nrepresentation to its hardware description provided by the ECU Resource Template.\nTags:atp.recommendedPackage=SwComponentTypes"
    extends M2.AUTOSARTemplates.SWComponentTemplate.Components.AtomicSwComponentType;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_hardwareElement = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.EcuResourceTemplate.HwDescriptionEntity hardwareElement[n_hardwareElement];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end ComplexDeviceDriverSwComponentType;
  class SymbolProps "This meta-class represents the ability to attach with the symbol attribute a symbolic name that is conform\nto C language requirements to another meta-class, e.g. AtomicSwComponentType, that is a potential\nsubject to a name clash on the level of RTE source code"

    extends M2.AUTOSARTemplates.CommonStructure.Implementation.ImplementationProps;
    annotation (Protection(access = Access.nonPackageDuplicate));
  end SymbolProps;

  class PortGroup "Group of ports which share a common functionality\n, e.g. need 
specific network resources. This information shall be available on the VFB level
in order to\ndelegate it properly via compositions. When propagated into the ECU
extract, this information is used as\ninput for the configuration of Services like
the Communication Manager.\nA PortGroup is defined locally in a component (which 
can be a composition) and refers to the \"outer\"\nports belonging to the group as
well as to the \"inner\" groups which propagate this group into the\ncomponents which
are part of a composition. A PortGroup within an atomic SWC cannot be linked to\ninner groups.\r"

    extends M2.AUTOSARTemplates.GenericStructure.AbstractStructure.AtpStructureElement;

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_innerGroup = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Components.PortGroup innerGroup[n_innerGroup];

    parameter M2.Utilities.MultiInterger.Interger0Unbound n_outerPort = 0 annotation (Dialog(connectorSizing = true));
    M2.AUTOSARTemplates.SWComponentTemplate.Components.PortPrototype outerPort[n_outerPort];
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PortGroup;

  class PortPrototype "20230712 define by yangpeihao"
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PortPrototype;
  class RPortPrototype "Component port requiring a certain port interface"
    annotation (Protection(access = Access.nonPackageDuplicate));
  end RPortPrototype;
  class PPortPrototype "Component port providing a certain port interface."
    annotation (Protection(access = Access.nonPackageDuplicate));
  end PPortPrototype;
  annotation (Protection(access = Access.nonPackageDuplicate));
end Components;