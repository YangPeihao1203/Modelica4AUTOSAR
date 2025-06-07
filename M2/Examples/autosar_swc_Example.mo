within M2.Examples;
package autosar_swc_Example
  model Subsystem
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-122, 70}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-122, -12}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y_
      annotation (Placement(transformation(origin = {138, 64}, 
        extent = {{-14, -14}, {14, 14}}), 
        iconTransformation(origin = {110, 14}, 
          extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Gain gain(k = 3)
      annotation (Placement(transformation(origin = {-25.999999999999986, -12}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Add add
      annotation (Placement(transformation(origin = {16.000000000000014, 64}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Gain gain1(k = 5)
      annotation (Placement(transformation(origin = {68.00000000000001, 64}, 
        extent = {{-10, -10}, {10, 10}})));
  equation 
    connect(u1, gain.u)
      annotation (Line(origin = {-143, -18}, 
        points = {{21, 6}, {105.00000000000001, 6}}, 
        color = {0, 0, 127}));
    connect(add.u2, gain.y)
      annotation (Line(origin = {-89.99999999999999, 12}, 
        points = {{94, 46}, {94, -24}, {75, -24}}, 
        color = {0, 0, 127}));
    connect(u, add.u1)
      annotation (Line(origin = {-158, 70}, 
        points = {{36, 0}, {162, 0}}, 
        color = {0, 0, 127}));
    connect(add.y, gain1.u)
      annotation (Line(origin = {-22.999999999999986, 64}, 
        points = {{50, 0}, {79, 0}}, 
        color = {0, 0, 127}));
    connect(y_, gain1.y)
      annotation (Line(origin = {84.50000000000001, 64}, 
        points = {{53.499999999999986, 0}, {-5.5, 0}}, 
        color = {0, 0, 127}));

    annotation (Protection(access = Access.diagram));
  end Subsystem;
  model Subsystem1
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-124, 70}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-124, -30}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Math.Gain gain(k = 2)
      annotation (Placement(transformation(origin = {-76, 70}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Add add
      annotation (Placement(transformation(origin = {-34, 64}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealOutput y_
      annotation (Placement(transformation(origin = {110, 6}, 
        extent = {{-10, -10}, {10, 10}})));
    annotation (Protection(access = Access.diagram));
  equation 
    connect(u, gain.u)
      annotation (Line(origin = {-193, 70}, 
        points = {{69, 0}, {105, 0}}, 
        color = {0, 0, 127}));
    connect(gain.y, add.u1)
      annotation (Line(origin = {-84, 70}, 
        points = {{19, 0}, {38, 0}}, 
        color = {0, 0, 127}));
    connect(u1, add.u2)
      annotation (Line(origin = {-145, 14}, 
        points = {{21, -44}, {85, -44}, {85, 44}, {99, 44}}, 
        color = {0, 0, 127}));
    connect(add.y, y_)
      annotation (Line(origin = {93, 64}, 
        points = {{-116, 0}, {-91, 0}, {-91, -58}, {17, -58}}, 
        color = {0, 0, 127}));

  end Subsystem1;

  model RunnableEntity
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-118, 49.60000000000003}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-118, -26}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y_
      annotation (Placement(transformation(origin = {118, 38.00000000000002}, 
        extent = {{-20.000000000000014, -20.00000000000002}, {19.999999999999986, 20.000000000000036}})));
    Modelica.Blocks.Interfaces.RealOutput y_1
      annotation (Placement(transformation(origin = {117.99999999999999, -43.99999999999997}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Math.Add add
      annotation (Placement(transformation(origin = {28, 38.00000000000003}, 
        extent = {{-10, -10}, {10, 10}})));
    Subsystem subsystem1
      annotation (Placement(transformation(origin = {-21, 42.60000000000004}, 
        extent = {{-15, -10.000000000000007}, {15, 10}})));
    Subsystem1 subsystem1_1
      annotation (Placement(transformation(origin = {-32, -44.79999999999997}, 
        extent = {{-15, -10.000000000000007}, {15, 10.000000000000007}})));
    annotation (Protection(access = Access.diagram));
  equation 
    connect(add.y, y_)
      annotation (Line(origin = {217, 59.60000000000003}, 
        points = {{-178, -21.6}, {-99.00000000000001, -21.6}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(subsystem1.u, u)
      annotation (Line(origin = {-169, 49.60000000000003}, 
        points = {{126, 0}, {51, 0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(subsystem1.y_, add.u1)
      annotation (Line(origin = {46.99999999999997, 54.60000000000003}, 
        points = {{-61.99999999999997, -10.600000000000001}, {-30.99999999999997, -10.600000000000001}}, 
        color = {0, 0, 127}));
    connect(subsystem1_1.y_, y_1)
      annotation (Line(origin = {102.99999999999997, -47.39999999999997}, 
        points = {{-130.49999999999997, 3.3999999999999986}, {15.000000000000014, 3.3999999999999986}}, 
        color = {0, 0, 127}));
    connect(subsystem1_1.y_, add.u2)
      annotation (Line(origin = {50.99999999999997, -6.39999999999997}, 
        points = {{-78.49999999999997, -37.6}, {-34.99999999999997, -37.6}, {-34.99999999999997, 38.4}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(u1, subsystem1_1.u)
      annotation (Line(origin = {-174, -46.39999999999997}, 
        points = {{56, 20.39999999999997}, {113.2, 20.39999999999997}, {113.2, 8.600000000000009}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(subsystem1.u1, u1)
      annotation (Line(origin = {-172, -4.39999999999997}, 
        points = {{124.8, 45.6}, {98, 45.6}, {98, -21.60000000000003}, {54, -21.60000000000003}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(subsystem1_1.u1, u)
      annotation (Line(origin = {-220, -1.3999999999999702}, 
        points = {{159.2, -46.4}, {136, -46.4}, {136, 51}, {102, 51}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end RunnableEntity;
  model RunnableEntity3
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-122.00000000000001, 8}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y_
      annotation (Placement(transformation(origin = {113, 8}, 
        extent = {{-13, -13}, {13, 13}})));
    Modelica.Blocks.Continuous.Integrator pID_I(y_start = 1)
      annotation (Placement(transformation(origin = {-44, 8}, 
        extent = {{-10, -10}, {10, 10}})));
    annotation (Protection(access = Access.diagram));
  equation 
    connect(u, pID_I.u)
      annotation (Line(origin = {-133, 8}, 
        points = {{10.999999999999986, 0}, {77, 0}}, 
        color = {0, 0, 127}));
    connect(pID_I.y, y_)
      annotation (Line(origin = {65, 8}, 
        points = {{-98, 0}, {48, 0}}, 
        color = {0, 0, 127}));
  end RunnableEntity3;

  model autosar_swc
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-312, 71.04400000000001}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-310, -30}, 
        extent = {{-20, -20}, {20, 20}})));
    VisibleElements.RPORT rport
      annotation (Placement(transformation(origin = {-222, 71.34400000000001}, 
        extent = {{-10, -10}, {10, 10}})));
    VisibleElements.RPORT rport1(sample_time = 2)
      annotation (Placement(transformation(origin = {-246, -29.7}, 
        extent = {{-10, -10}, {10, 10}})));
    RunnableEntity runnableEntity
      annotation (Placement(transformation(origin = {-91.2389, 66.65625}, 
        extent = {{-24.7611, -11.3437}, {24.7611, 11.34375}})));
    RunnableEntity3 runnableEntity3
      annotation (Placement(transformation(origin = {-193.882, -30.1929}, 
        extent = {{-26.4612, -11.2071}, {26.4612, 11.2071}})));
    VisibleElements.PPORT pport
      annotation (Placement(transformation(origin = {-2.0, 71.34400000000001}, 
        extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    VisibleElements.PPORT pport1
      annotation (Placement(transformation(origin = {28.0, 61.04400000000001}, 
        extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    VisibleElements.IRV irv1_1(sample_time_source = 2)
      annotation (Placement(transformation(origin = {-141.3203125, -29.99999999999999}, 
        extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    parameter Real INC = 1;
    parameter Real K = 2;
    parameter Real LIMIT = 16;
    parameter Real RESET = 0;
    Utilities.DataStoreMemory dataStoreMemory
      annotation (Placement(transformation(origin = {-14.9824, -6.33117}, 
        extent = {{-33.662, -15.8592}, {33.662, 15.8592}})));
    FunctionCaller1 functionCaller1_1
      annotation (Placement(transformation(origin = {-42.4753, -60.641}, 
        extent = {{-26.4507, -15.1831}, {26.4507, 15.1831}})));
    annotation (Protection(access = Access.diagram));
  equation 
    connect(rport.y_, runnableEntity.u)
      annotation (Line(origin = {-170.0, 62.0}, 
        points = {{-42.0, 9.0}, {51.0, 9.0}, {51.0, 10.0}}, 
        color = {0, 0, 127}));
    connect(u, rport.u)
      annotation (Line(origin = {-272.0, 65.98400000000001}, 
        points = {{-40.0, 5.0}, {40.0, 5.0}}, 
        color = {0, 0, 127}));
    connect(u1, rport1.u)
      annotation (Line(origin = {-270.0, -30.0}, 
        points = {{-40.0, 0.0}, {14.0, 0.0}}, 
        color = {0, 0, 127}));
    connect(rport1.y_, runnableEntity3.u)
      annotation (Line(origin = {-196.0, -30.0}, 
        points = {{-40.0, 0.0}, {-20.0, 0.0}, {-20.0, -1.0}}, 
        color = {0, 0, 127}));
    connect(runnableEntity.y_, pport)
      annotation (Line(origin = {-24.0, 67.0}, 
        points = {{-52.0, 4.0}, {22.0, 4.0}}, 
        color = {0, 0, 127}));
    connect(runnableEntity.y_1, pport1)
      annotation (Line(origin = {-24.0, 48.0}, 
        points = {{-52.0, 14.0}, {52.0, 14.0}, {52.0, 13.0}}, 
        color = {0, 0, 127}));
    connect(irv1_1.u, runnableEntity3.y_)
      annotation (Line(origin = {-132.0, -30.0}, 
        points = {{-20.0, -1.0}, {-41.0, -1.0}}, 
        color = {0, 0, 127}));
    connect(irv1_1.y_, runnableEntity.u1)
      annotation (Line(origin = {-109.0, 13.0}, 
        points = {{-21.0, -44.0}, {-21.0, 51.0}, {-10.0, 51.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end autosar_swc;
  model FunctionCaller1
    annotation (Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
      grid = {2, 2}), graphics = {Rectangle(origin = {-1.1267605633802873, -4.9577464788732435}, 
      fillColor = {255, 255, 255}, 
      fillPattern = FillPattern.Solid, 
      extent = {{-98.47887323943664, 65.80281690140846}, {98.47887323943664, -65.80281690140846}}), Text(origin = {4.281690140845054, -3.15492957746478}, 
      lineColor = {0, 0, 0}, 
      extent = {{-99.38028169014086, 62.197183098591566}, {99.38028169014088, -62.19718309859157}}, 
      textString = "FunctionCaller", 
      textStyle = {TextStyle.Bold}, 
      textColor = {0, 0, 0}), Text(origin = {2.9295774647887356, -105.01408450704227}, 
      lineColor = {0, 0, 0}, 
      extent = {{-112.45070422535213, 20.732394366197184}, {112.45070422535213, -20.732394366197184}}, 
      textString = "%name", 
      textStyle = {TextStyle.None}, 
      textColor = {0, 0, 0}, 
      horizontalAlignment = LinePattern.None)}));

  end FunctionCaller1;
end autosar_swc_Example;