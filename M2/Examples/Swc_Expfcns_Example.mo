within M2.Examples;
package Swc_Expfcns_Example
  model RunnableEntity1_subsystem
    Modelica.Blocks.Sources.Constant constant1(k = 1) 
      annotation (Placement(transformation(origin = {-72.14170965699917, 7.064385471846961}, 
        extent = {{-5.064385471846961, -5.064385471846961}, {5.064385471846975, 5.064385471846961}})));
    Modelica.Blocks.Interfaces.RealInput ErrorStatus 
      annotation (Placement(transformation(origin = {-73.87683123179266, -8.007079314435419}, 
        extent = {{-6.799507046640471, -6.7995070466404695}, {6.799507046640485, 6.799507046640473}})));
    Utilities.comparator comparator1 
      annotation (Placement(transformation(origin = {-55.72321131117057, -5.947667107503001}, 
        extent = {{-4.27678868882942, -3.996416249225539}, {4.2767886888294555, 3.996416249225539}})));
    Modelica.Blocks.Math.Gain gain(
      k = -1) 

      annotation (Placement(transformation(origin = {-40.985818672444324, -12.552126573212115}, 
        extent = {{-4.0, -4.0}, {4.0, 4.0}}, 
        rotation = 180.0)));

    Modelica.Blocks.Interfaces.RealOutput y_ 
      annotation (Placement(transformation(origin = {-14.399812470682756, 0.3998124706827557}, 
        extent = {{-6.3998124706827575, -6.399812470682756}, {6.399812470682754, 6.399812470682756}})));
    Subsystem_EnableSubsystem subsystem_EnableSubsystem 
      annotation (Placement(transformation(origin = {-27.00000000000001, -31.723959036528534}, 
        extent = {{-19.00000000000001, -10.154461267330518}, {19.00000000000001, 10.15446126733054}})));
    Modelica.Blocks.Interfaces.RealOutput adder 
      annotation (Placement(transformation(origin = {3.617134920740446, -31.72395903652853}, 
        extent = {{-6.382865079259553, -6.382865079259545}, {6.382865079259553, 6.382865079259567}})));
    Modelica.Blocks.Interfaces.RealInput u2 
      annotation (Placement(transformation(origin = {-75.9397049153532, -33.016039573658055}, 
        extent = {{-8.862380730200996, -8.862380730200996}, {8.86238073020101, 8.86238073020101}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin = {-76.42671946917292, -21.624633823618723}, 
        extent = {{-8.375366176381291, -8.375366176381286}, {8.375366176381306, 8.375366176381288}})));
    Modelica.Blocks.Discrete.UnitDelay Delay(samplePeriod = 1, startTime = 1, y_start = 1) 
      annotation (Placement(transformation(origin = {-31.399812470682775, 0.39981247068275616}, 
        extent = {{-4.413993798238444, -4.413993798238444}, {4.413993798238439, 4.41399379823844}})));
  equation
    connect(constant1.y, comparator1.u) 
      annotation (Line(origin = {-164.2000000000001, 23.599999999999998}, 
        points = {{98.0, -17.0}, {100.0, -17.0}, {100.0, -27.0}, {103.0, -27.0}}, 
        color = {0, 0, 127}));
    connect(comparator1.u1, ErrorStatus) 
      annotation (Line(origin = {-144.0, -5.0}, 
        points = {{83.0, -3.0}, {70.0, -3.0}}, 
        color = {0, 0, 127}));
    connect(subsystem_EnableSubsystem.y_, adder) 
      annotation (Line(origin = {-19.0, -30.0}, 
        points = {{12.0, -2.0}, {23.0, -2.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(comparator1.y, subsystem_EnableSubsystem.u2) 
      annotation (Line(origin = {-101.00000000000001, -4.9999999999999964}, 
        points = {{50.0, -1.0}, {52.0, -1.0}, {52.0, -30.0}, {55.0, -30.0}}, 
        color = {255, 0, 255}));
    connect(u1, subsystem_EnableSubsystem.u) 
      annotation (Line(origin = {-127.54988823738026, -21.600000000000005}, 
        points = {{51.0, 0.0}, {67.0, 0.0}, {67.0, -7.0}, {81.0, -7.0}}, 
        color = {0, 0, 127}));
    connect(u2, subsystem_EnableSubsystem.u1) 
      annotation (Line(origin = {-127.54988823738026, -51.6}, 
        points = {{52.0, 19.0}, {81.0, 19.0}, {81.0, 20.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(Delay.y, y_) 
      annotation (Line(origin = {16.014181327555676, 28.447873426787886}, 
        points = {{-43.0, -28.0}, {-30.0, -28.0}}, 
        color = {0, 0, 127}));
    connect(gain.y, Delay.u) 
      annotation (Line(origin = {-62.985818672444324, 7.4478734267878846}, 
        points = {{18.0, -20.0}, {18.0, -7.0}, {26.0, -7.0}}, 
        color = {0, 0, 127}));
    connect(gain.u, Delay.y) 
      annotation (Line(origin = {-32.985818672444324, 7.4478734267878846}, 
        points = {{-3.0, -20.0}, {8.0, -20.0}, {8.0, -7.0}, {6.0, -7.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end RunnableEntity1_subsystem;

  model Subsystem_EnableSubsystem
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin = {-101.43589138739385, 29.564108612606105}, 
        extent = {{-9.116270139489984, -9.116270139489956}, {9.116270139489927, 9.116270139489963}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin = {-100.81962124790391, 2.48037875209606}, 
        extent = {{-8.5, -8.5}, {8.5, 8.5}})));
    Modelica.Blocks.Math.Add add 
      annotation (Placement(transformation(origin = {-67.0, 5.999999999999998}, 
        extent = {{-7.000000000000028, -7.000000000000004}, {6.999999999999972, 6.999999999999992}})));
    Modelica.Blocks.Math.Product product1_1 
      annotation (Placement(transformation(origin = {-40.000000, 0.000000}, extent = {{-10.000000, -10.000000}, {10.000000, 10.000000}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal(
      realTrue = 0, realFalse = 1) 

      annotation (Placement(transformation(origin = {-68.00390625000001, -16.00390625}, 
        extent = {{-5.99609375, -5.99609375}, {5.996093750000014, 5.99609375}})));
    Modelica.Blocks.Interfaces.BooleanInput u2 
      annotation (Placement(transformation(origin = {-98.65981062395196, -32.65981062395197}, 
        extent = {{-10.659810623951955, -10.65981062395197}, {10.659810623951955, 10.65981062395197}})));
    Modelica.Blocks.Interfaces.RealOutput y_ 
      annotation (Placement(transformation(origin = {107.87434140116287, 2.220446049250313e-16}, 
        extent = {{-7.874341401162859, -7.874341401162858}, {7.874341401162855, 7.874341401162858}})));
  equation
    connect(u, add.u1) 
      annotation (Line(origin = {-219.3196212479039, 58.68037875209606}, 
        points = {{118.0, -29.0}, {136.0, -29.0}, {136.0, -48.0}, {144.0, -48.0}}, 
        color = {0, 0, 127}));
    connect(u1, add.u2) 
      annotation (Line(origin = {-219.3196212479039, 17.68037875209606}, 
        points = {{119.0, -15.0}, {144.0, -15.0}, {144.0, -16.0}}, 
        color = {0, 0, 127}));
    connect(add.y, product1_1.u1) 
      annotation (Line(origin = {-90.0, 23.0}, 
        points = {{31.0, -17.0}, {38.0, -17.0}}, 
        color = {0, 0, 127}));
    connect(booleanToReal.u, u2) 
      annotation (Line(origin = {-219.3196212479039, -69.31962124790394}, 
        points = {{144.0, 53.0}, {121.0, 53.0}, {121.0, 37.0}}, 
        color = {255, 0, 255}));
    connect(booleanToReal.y, product1_1.u2) 
      annotation (Line(origin = {-90.0, -38.0}, 
        points = {{29.0, 22.0}, {38.0, 22.0}, {38.0, 32.0}}, 
        color = {0, 0, 127}));
    connect(product1_1.y, y_) 
      annotation (Line(origin = {-3.0, 0.0}, 
        points = {{-26.0, 0.0}, {111.0, 0.0}}, 
        color = {0, 0, 127}));

  end Subsystem_EnableSubsystem;
  model RunnableEntity2_subsystem
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin = {-70.0, 25.999999999999986}, 
        extent = {{-8.0, -7.999999999999993}, {7.999999999999986, 7.999999999999993}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin = {-69.60221413274712, 13.397785867252885}, 
        extent = {{-7.602214132747122, -7.6022141327471076}, {7.6022141327471076, 7.602214132747104}})));
    Modelica.Blocks.Math.Add substract(k2 = -1) 
      annotation (Placement(transformation(origin = {-41.999999999999986, 19.999999999999993}, 
        extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Modelica.Blocks.Interfaces.RealOutput Substracter 
      annotation (Placement(transformation(origin = {16.40128365898346, 34.40128365898342}, 
        extent = {{-8.40128365898343, -8.401283658983424}, {8.401283658983417, 8.401283658983424}})));
    Modelica.Blocks.Interfaces.RealOutput Substracter_irv 
      annotation (Placement(transformation(origin = {16.41622068831423, 20.0}, 
        extent = {{-8.416220688314208, -8.416220688314201}, {8.416220688314187, 8.416220688314201}})));


    Modelica.Blocks.Math.Gain gain(k = -1) 
      annotation (Placement(transformation(origin = {-25.999999999999993, 42.00000000000001}, 
        extent = {{-6.0, -6.0}, {6.0, 6.0}}, 
        rotation = 180.0)));
    Modelica.Blocks.Interfaces.RealOutput y_ 
      annotation (Placement(transformation(origin = {11.999999999999996, 59.777787102619186}, 
        extent = {{-10.0, -10.0}, {10.0, 10.0}})));
    Modelica.Blocks.Discrete.UnitDelay Delay(samplePeriod = 1, startTime = 1, y_start = 1) 
      annotation (Placement(transformation(origin = {-28.222212897380818, 59.777787102619186}, 
        extent = {{-6.444458855548881, -6.444458855548881}, {6.4444588555488735, 6.444458855548888}})));
    Utilities.DiscreteTimeIntegrator discreteTimeIntegrator 
      annotation (Placement(transformation(origin = {-11.999999999999972, 19.2}, 
        extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  equation
    connect(u, substract.u1) 
      annotation (Line(origin = {-82.0, 37.99999999999999}, 
        points = {{12.0, -12.0}, {28.0, -12.0}}, 
        color = {0, 0, 127}));
    connect(u1, substract.u2) 
      annotation (Line(origin = {-82.0, -3.000000000000007}, 
        points = {{12.0, 16.0}, {28.0, 16.0}, {28.0, 17.0}}, 
        color = {0, 0, 127}));
    connect(gain.y, Delay.u) 
      annotation (Line(origin = {-41.0, 35.0}, 
        points = {{8.0, 7.0}, {-2.0, 7.0}, {-2.0, 25.0}, {5.0, 25.0}}, 
        color = {0, 0, 127}));
    connect(gain.u, Delay.y) 
      annotation (Line(origin = {-18.0, 35.0}, 
        points = {{-1.0, 7.0}, {18.0, 7.0}, {18.0, 25.0}, {-3.0, 25.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(y_, Delay.y) 
      annotation (Line(origin = {26.000000000000007, 58.0}, 
        points = {{-14.0, 2.0}, {-47.0, 2.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(substract.y, discreteTimeIntegrator.u) 
      annotation (Line(origin = {-12.999999999999993, 19.999999999999993}, 
        points = {{-18.0, 0.0}, {-11.0, 0.0}}, 
        color = {0, 0, 127}));
    connect(discreteTimeIntegrator.y, Substracter) 
      annotation (Line(origin = {71.0, 34.99999999999999}, 
        points = {{-72.0, -15.0}, {-72.0, -1.0}, {-55.0, -1.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(Substracter_irv, discreteTimeIntegrator.y) 
      annotation (Line(origin = {71.0, 19.999999999999993}, 
        points = {{-55.0, 0.0}, {-72.0, 0.0}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end RunnableEntity2_subsystem;

  model RunnableEntity3_subsystem
    Modelica.Blocks.Interfaces.RealOutput TicToc 
      annotation (Placement(transformation(origin = {22.9646, -16.5352}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealOutput TicToc_irv 
      annotation (Placement(transformation(origin = {24.3026, -31.8662}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealOutput Multiplier 
      annotation (Placement(transformation(origin = {24.2112, -53.4648}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Gain gain(k = -1) 
      annotation (Placement(transformation(origin = {-16.4154, -31.7324}, 
        extent = {{4, -4}, {-4, 4}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin = {-36.58200423087693, -48.0}, 
        extent = {{-8.0, -8.0}, {8.0, 8.0}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin = {-36.290961427817834, -59.99999999999999}, 
        extent = {{-8.2910428030591, -8.291042803059128}, {8.291042803059092, 8.291042803059085}})));
    Modelica.Blocks.Math.Product product1_1 
      annotation (Placement(transformation(origin = {-4, -54}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Discrete.UnitDelay Delay(samplePeriod = 10, y_start = 1, startTime = 10) 
      annotation (Placement(transformation(origin = {-28.941, -16.8028}, 
        extent = {{-5, -5}, {5, 5}})));
  equation
    connect(u, product1_1.u1) 
      annotation (Line(origin = {-41.0, 0.0}, 
        points = {{4.0, -48.0}, {25.0, -48.0}}, 
        color = {0, 0, 127}));
    connect(product1_1.u2, u1) 
      annotation (Line(origin = {-89.0, -73.0}, 
        points = {{73.0, 13.0}, {53.0, 13.0}}, 
        color = {0, 0, 127}));
    connect(product1_1.y, Multiplier) 
      annotation (Line(origin = {1, -49}, 
        points = {{6, -5}, {23.2112, -5}, {23.2112, -4.4648}}, 
        color = {0, 0, 127}));
    connect(Delay.y, TicToc) 
      annotation (Line(origin = {35, -16}, 
        points = {{-58.441, -0.802799}, {-12.0354, -0.802799}, {-12.0354, -0.535199}}, 
        color = {0, 0, 127}));
    connect(gain.y, Delay.u) 
      annotation (Line(origin = {-70.8872, -37.1338}, 
        points = {{50.0718, 5.4014}, {30.059, 5.4014}, {30.059, 20.331}, {35.9462, 20.331}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(gain.u, Delay.y) 
      annotation (Line(origin = {-34, -37}, 
        points = {{22.3846, 5.2676}, {22.3846, 20.1972}, {10.559, 20.1972}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(TicToc_irv, Delay.y) 
      annotation (Line(origin = {18, -37}, 
        points = {{6.30259, 5.1338}, {-21, 5.1338}, {-21, 20.1972}, {-41.441, 20.1972}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end RunnableEntity3_subsystem;


  model Swc_Expfcns
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-110.364,1.652}, 
extent={{-10.2962,-10.2962},{10.2962,10.2962}})));
    Modelica.Blocks.Interfaces.RealInput u1 
      annotation (Placement(transformation(origin={-110.857,63.7136}, 
extent={{-10.1318,-10.1318},{10.1318,10.1318}})));
    Modelica.Blocks.Interfaces.RealInput u2 
      annotation (Placement(transformation(origin={-110.6,-59.4595}, 
extent={{-10.2962,-10.2962},{10.2962,10.2962}})));
    VisibleElements.RPORT RPort_DE1_ErrorStatus 
      annotation (Placement(transformation(origin = {-120, 90}, 
        extent = {{-10, -10}, {10, 10}})));
    VisibleElements.RPORT RPORT_DE1 
      annotation (Placement(transformation(origin = {-120, 36.3}, 
        extent = {{-10, -10}, {10, 10}})));
    RunnableEntity1_subsystem runnable1_subsystem(constant1(k = 0), subsystem_EnableSubsystem(booleanToReal(realTrue = 1, realFalse = 0), add(k1 = 1))) 
      annotation (Placement(transformation(origin = {18, 66.3}, 
        extent = {{-30, -40}, {30, 40}})));
    VisibleElements.PPORT PPort_1 
      annotation (Placement(transformation(origin={110.277,66.2977}, 
extent={{-10,-10},{10,10}})));
    RunnableEntity3_subsystem runnable3_subsystem 
      annotation (Placement(transformation(origin = {-48, -57.400000000000006}, 
        extent = {{-24, -25.000000000000007}, {24, 25.000000000000004}})));
    VisibleElements.RPORT RPort_DE2(sample_time = 10) 
      annotation (Placement(transformation(origin = {-120, -78}, 
        extent = {{-10, -10}, {10, 10}})));
    VisibleElements.PPORT PPort_2 
      annotation (Placement(transformation(origin={110.578,-60.1499}, 
extent={{-10,-10},{10,10}})));
    RunnableEntity2_subsystem runnable2_subsystem 
      annotation (Placement(transformation(origin = {176, -4}, 
        extent = {{-30, -40}, {29.99999999999997, 40}})));
    VisibleElements.PPORT PPort_3 
      annotation (Placement(transformation(origin={110.2,24.6842}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.PPORT PPort_4 
      annotation (Placement(transformation(origin={110.529,-18.784}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.IRV irv1(sample_time_source = 1, sample_time_target = 1) 
      annotation (Placement(transformation(origin = {90, 54.9}, 
        extent = {{-10, -10}, {10, 10}})));
    VisibleElements.IRV irv4(sample_time_source = 1, sample_time_target = 10) 
      annotation (Placement(transformation(origin = {250.000000, -20.000000}, extent = {{-10.000000, -10.000000}, {10.000000, 10.000000}})));
    VisibleElements.IRV irv2(sample_time_source = 10) 
      annotation (Placement(transformation(origin = {40.000000, -60.000000}, extent = {{-10.000000, -10.000000}, {10.000000, 10.000000}})));
    VisibleElements.IRV irv3(sample_time_source = 10) 
      annotation (Placement(transformation(origin = {-92, 10}, 
        extent = {{-10, -10}, {10, 10}})));
    parameter Real INC = 1;
    parameter Real K = 2;
    parameter Real LIMIT = 16;
    parameter Real RESET = 0;
  equation
    connect(u1, RPort_DE1_ErrorStatus.u) 
      annotation (Line(origin = {-165.0, 80.0}, 
        points = {{-35.0, 10.0}, {35.0, 10.0}}, 
        color = {0, 0, 127}));
    connect(u, RPORT_DE1.u) 
      annotation (Line(origin = {-165.0, 36.0}, 
        points = {{-35.0, 0.0}, {35.0, 0.0}}, 
        color = {0, 0, 127}));
    connect(RPort_DE1_ErrorStatus.y_, runnable1_subsystem.ErrorStatus) 
      annotation (Line(origin = {-79.0, 77.0}, 
        points = {{-31.0, 13.0}, {61.0, 13.0}, {61.0, 14.0}}, 
        color = {0, 0, 127}));
    connect(RPORT_DE1.y_, runnable1_subsystem.u1) 
      annotation (Line(origin = {-79.0, 47.0}, 
        points = {{-31.0, -11.0}, {-31.0, 25.0}, {61.0, 25.0}}, 
        color = {0, 0, 127}));
    connect(runnable1_subsystem.y_, PPort_1) 
      annotation (Line(origin = {95.0, 89.0}, 
        points = {{-44.0, -2.0}, {61.0, -2.0}}, 
        color = {0, 0, 127}));
    connect(u2, RPort_DE2.u) 
      annotation (Line(origin = {-149.0, -78.4}, 
        points = {{-19.0, 0.0}, {19.0, 0.0}}, 
        color = {0, 0, 127}));
    connect(runnable3_subsystem.u1, RPort_DE2.y_) 
      annotation (Line(origin = {-86.0, -67.0}, 
        points = {{9.0, -11.0}, {-24.0, -11.0}}, 
        color = {0, 0, 127}));
    connect(runnable3_subsystem.TicToc_irv, PPort_2) 
      annotation (Line(origin = {14.0, -46.0}, 
        points = {{-36.0, -2.0}, {40.0, -2.0}}, 
        color = {0, 0, 127}));
    connect(runnable2_subsystem.y_, PPort_3) 
      annotation (Line(origin = {229.0, 32.0}, 
        points = {{-20.0, 0.0}, {21.0, 0.0}}, 
        color = {0, 0, 127}));
    connect(runnable2_subsystem.Substracter, PPort_4) 
      annotation (Line(origin = {227.0, -1.0}, 
        points = {{-18.0, -1.0}, {23.0, -1.0}}, 
        color = {0, 0, 127}));
    connect(runnable1_subsystem.adder, irv1.u) 
      annotation (Line(origin = {60.0, 54.0}, 
        points = {{-9.0, 0.0}, {19.0, 0.0}}, 
        color = {0, 0, 127}));
    connect(irv1.y_, runnable2_subsystem.u) 
      annotation (Line(origin = {116.0, 26.0}, 
        points = {{-15.0, 28.0}, {23.0, 28.0}, {23.0, -28.0}}, 
        color = {0, 0, 127}));
    connect(runnable2_subsystem.Substracter_irv, irv4.u) 
      annotation (Line(origin = {221.0, -17.0}, 
        points = {{-12.0, 3.0}, {18.0, 3.0}, {18.0, -4.0}}, 
        color = {0, 0, 127}));
    connect(irv4.y_, runnable3_subsystem.u) 
      annotation (Line(origin = {100.0, -34.0}, 
        points = {{161.0, 13.0}, {161.0, -70.0}, {-316.0, -70.0}, {-316.0, -21.0}, {-177.0, -21.0}}, 
        color = {0, 0, 127}));
    connect(runnable3_subsystem.Multiplier, irv2.u) 
      annotation (Line(origin = {4.0, -61.0}, 
        points = {{-26.0, -10.0}, {25.0, -10.0}, {25.0, 0.0}}, 
        color = {0, 0, 127}));
    connect(irv2.y_, runnable2_subsystem.u1) 
      annotation (Line(origin = {91.0, -45.0}, 
        points = {{-40.0, -16.0}, {48.0, -16.0}, {48.0, 15.0}}, 
        color = {0, 0, 127}));
    connect(runnable3_subsystem.TicToc, irv3.u) 
      annotation (Line(origin = {-50.0, -12.0}, 
        points = {{28.0, -25.0}, {30.0, -25.0}, {30.0, -16.0}, {-53.0, -16.0}, {-53.0, 21.0}}, 
        color = {0, 0, 127}));
    connect(irv3.y_, runnable1_subsystem.u2) 
      annotation (Line(origin = {-65.0, 23.0}, 
        points = {{-16.0, -14.0}, {-16.0, 29.0}, {47.0, 29.0}}, 
        color = {0, 0, 127}));
  end Swc_Expfcns;



end Swc_Expfcns_Example;