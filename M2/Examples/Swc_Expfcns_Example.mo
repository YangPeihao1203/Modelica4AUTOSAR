within M2.Examples;
package Swc_Expfcns_Example
  model RunnableEntity1_subsystem
    Modelica.Blocks.Sources.Constant constant1(k = 1)
      annotation (Placement(transformation(origin = {-111.397, 44.462}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealInput ErrorStatus
      annotation (Placement(transformation(origin = {-114.479, 15.328}, 
        extent = {{-14.8142, -14.8142}, {14.8142, 14.8142}})));
    Utilities.comparator comparator1
      annotation (Placement(transformation(origin = {-80.4455, 20.9607}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Gain gain(
      k = -1)

      annotation (Placement(transformation(origin = {-34.7135, -5.85917}, 
        extent = {{-10, -10}, {10, 10}}, 
        rotation = 180)));

    Modelica.Blocks.Interfaces.RealOutput y_
      annotation (Placement(transformation(origin = {49.2762, 29.4168}, 
        extent = {{-15.1858, -15.1858}, {15.1858, 15.1858}})));
    Subsystem_EnableSubsystem subsystem_EnableSubsystem
      annotation (Placement(transformation(origin = {-14.5843, -37.5123}, 
        extent = {{-35.4231, -14.5012}, {35.4231, 14.5012}})));
    Modelica.Blocks.Interfaces.RealOutput adder
      annotation (Placement(transformation(origin = {48.9417, -37.5277}, 
        extent = {{-15.1858, -15.1858}, {15.1858, 15.1858}})));
    Modelica.Blocks.Interfaces.RealInput u2
      annotation (Placement(transformation(origin = {-114.146, -36.8327}, 
        extent = {{-15.4834, -15.4834}, {15.4834, 15.4834}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-114.981, -8.68879}, 
        extent = {{-15.3161, -15.3161}, {15.3161, 15.3161}})));
    Modelica.Blocks.Discrete.UnitDelay Delay(samplePeriod = 1, startTime = 1, y_start = 1)
      annotation (Placement(transformation(origin = {-4.71351, 29.2495}, 
        extent = {{-10, -10}, {10, 10}})));
  equation 
    connect(constant1.y, comparator1.u)
      annotation (Line(origin = {-167.323, 30.2939}, 
        points = {{66.926, 14.1681}, {70.2717, 14.1681}, {70.2717, -2.53314}, {74.878, -2.53314}}, 
        color = {0, 0, 127}));
    connect(comparator1.u1, ErrorStatus)
      annotation (Line(origin = {-147.123, 1.69388}, 
        points = {{54.678, 13.4669}, {32.644, 13.4669}, {32.644, 13.6341}}, 
        color = {0, 0, 127}));
    connect(subsystem_EnableSubsystem.y_, adder)
      annotation (Line(origin = {-19, -30}, 
        points = {{43.3811, -7.51228}, {67.9417, -7.51228}, {67.9417, -7.52774}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(comparator1.y, subsystem_EnableSubsystem.u2)
      annotation (Line(origin = {-101, -5}, 
        points = {{31.5545, 26.9607}, {33.5619, 26.9607}, {33.5619, -42.6631}, {42.4911, -42.6631}}, 
        color = {255, 0, 255}));
    connect(u1, subsystem_EnableSubsystem.u)
      annotation (Line(origin = {-132.8, -21.6}, 
        points = {{17.8188, 12.9112}, {40.7019, 12.9112}, {40.7019, -4.89138}, {74.2911, -4.89138}}, 
        color = {0, 0, 127}));
    connect(u2, subsystem_EnableSubsystem.u1)
      annotation (Line(origin = {-132.8, -51.6}, 
        points = {{18.6544, 14.7673}, {74.2911, 14.7673}, {74.2911, 14.5228}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(Delay.y, y_)
      annotation (Line(origin = {22.2865, 35.9408}, 
        points = {{-16, -6.69132}, {26.9898, -6.69132}, {26.9898, -6.52404}}, 
        color = {0, 0, 127}));
    connect(gain.y, Delay.u)
      annotation (Line(origin = {-56.7135, 14.9408}, 
        points = {{11, -20.8}, {11, 14.3087}, {40, 14.3087}}, 
        color = {0, 0, 127}));
    connect(gain.u, Delay.y)
      annotation (Line(origin = {-26.7135, 14.9408}, 
        points = {{4, -20.8}, {44.0407, -20.8}, {44.0407, 14.3087}, {33, 14.3087}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end RunnableEntity1_subsystem;

  model Subsystem_EnableSubsystem
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-124, 76}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-124, 3}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Math.Add add
      annotation (Placement(transformation(origin = {-70, 44}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Math.Product product1_1
      annotation (Placement(transformation(origin = {-40.000000, 0.000000}, extent = {{-10.000000, -10.000000}, {10.000000, 10.000000}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal(
      realTrue = 0, realFalse = 1)

      annotation (Placement(transformation(origin = {-70, -70}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.BooleanInput u2
      annotation (Placement(transformation(origin = {-124.00000000000001, -70}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y_
      annotation (Placement(transformation(origin = {5.00996, 0.477952}, 
        extent = {{-13.3457, -13.3457}, {13.3457, 13.3457}})));
  equation 
    connect(u, add.u1)
      annotation (Line(origin = {-211, 58}, 
        points = {{87, -8}, {129, -8}}, 
        color = {0, 0, 127}));
    connect(u1, add.u2)
      annotation (Line(origin = {-211, 17}, 
        points = {{87, -7}, {129, -7}, {129, 21}}, 
        color = {0, 0, 127}));
    connect(add.y, product1_1.u1)
      annotation (Line(origin = {-90, 23}, 
        points = {{31, 21}, {38, 21}, {38, -17}}, 
        color = {0, 0, 127}));
    connect(booleanToReal.u, u2)
      annotation (Line(origin = {-211, -70}, 
        points = {{129, 0}, {86.99999999999999, 0}}, 
        color = {255, 0, 255}));
    connect(booleanToReal.y, product1_1.u2)
      annotation (Line(origin = {-90, -38}, 
        points = {{31, -32}, {38, -32}, {38, 32}}, 
        color = {0, 0, 127}));
    connect(product1_1.y, y_)
      annotation (Line(origin = {-3, 0}, 
        points = {{-26, 0}, {7.37269, 0}, {7.37269, -0.159317}}, 
        color = {0, 0, 127}));

  end Subsystem_EnableSubsystem;
  model RunnableEntity2_subsystem
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-107.661, -5.47084}, 
        extent = {{-13.9459, -13.9459}, {13.9459, 13.9459}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-107.661, -29.2688}, 
        extent = {{-14.5832, -14.5832}, {14.5832, 14.5832}})));
    Modelica.Blocks.Math.Add substract(k2 = -1)
      annotation (Placement(transformation(origin = {-61.6273, -24}, 
        extent = {{-10, -10}, {10, 10}})));
    Modelica.Blocks.Interfaces.RealOutput Substracter
      annotation (Placement(transformation(origin = {17.596, 3.45092}, 
        extent = {{-12.8677, -12.8677}, {12.8677, 12.8677}})));
    Modelica.Blocks.Interfaces.RealOutput Substracter_irv
      annotation (Placement(transformation(origin = {18.074, -23.522}, 
        extent = {{-13.027, -13.027}, {13.027, 13.027}})));


    Modelica.Blocks.Math.Gain gain(k = -1)
      annotation (Placement(transformation(origin = {-72.6486, 5.76387}, 
        extent = {{-10, -10}, {10, 10}}, 
        rotation = 180)));
    Modelica.Blocks.Interfaces.RealOutput y_
      annotation (Placement(transformation(origin = {17.9147, 27.229}, 
        extent = {{-13.505, -13.505}, {13.505, 13.505}})));
    Modelica.Blocks.Discrete.UnitDelay Delay(samplePeriod = 1, startTime = 1, y_start = 1)
      annotation (Placement(transformation(origin = {-72.33, 31.3712}, 
        extent = {{-10, -10}, {10, 10}})));
    Utilities.DiscreteTimeIntegrator discreteTimeIntegrator
      annotation (Placement(transformation(origin = {-29.7553, -24.1627}, 
        extent = {{-10, -10}, {10, 10}})));
  equation 
    connect(u, substract.u1)
      annotation (Line(origin = {-108, -6}, 
        points = {{0.338549, 0.529161}, {19.2674, 0.529161}, {19.2674, -12}, {34.3727, -12}}, 
        color = {0, 0, 127}));
    connect(u1, substract.u2)
      annotation (Line(origin = {-108, -47}, 
        points = {{-0.776671, 16.6159}, {34.3727, 16.6159}, {34.3727, 17}}, 
        color = {0, 0, 127}));
    connect(gain.y, Delay.u)
      annotation (Line(origin = {-84.2859, 30.357}, 
        points = {{0.637269, -24.5931}, {-21, -24.5931}, {-21, 1.01422}, {-0.0440967, 1.01422}}, 
        color = {0, 0, 127}));
    connect(gain.u, Delay.y)
      annotation (Line(origin = {-61.2859, 30.357}, 
        points = {{0.637269, -24.5931}, {18, -24.5931}, {18, 1.01422}, {-0.0440967, 1.01422}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(substract.y, discreteTimeIntegrator.u)
      annotation (Line(origin = {-39, -24}, 
        points = {{-11.6273, 0}, {-2.75533, 0}, {-2.75533, 0.637269}}, 
        color = {0, 0, 127}));
    connect(Substracter_irv, discreteTimeIntegrator.y)
      annotation (Line(origin = {45, -24}, 
        points = {{-26.926, 0.478}, {-63.7553, 0.478}, {-63.7553, 0.6373}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(y_, Delay.y)
      annotation (Line(origin = {-22, 45}, 
        points = {{39.9147, -17.771}, {-21.2859, -17.771}, {-21.2859, -13.6288}, {-39.33, -13.6288}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(Substracter, discreteTimeIntegrator.y)
      annotation (Line(origin = {-1, -10}, 
        points = {{18.596, 13.45092}, {-5.93885, 13.45092}, {-5.93885, -13.3627}, {-17.7553, -13.3627}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end RunnableEntity2_subsystem;

  model RunnableEntity3_subsystem
    Modelica.Blocks.Interfaces.RealOutput TicToc_irv
      annotation (Placement(transformation(origin = {38.3073, 4.80228}, 
        extent = {{-13.505, -13.505}, {13.505, 13.505}})));
    Modelica.Blocks.Interfaces.RealOutput TicToc
      annotation (Placement(transformation(origin = {36.5548, -21.4253}, 
        extent = {{-13.3457, -13.3457}, {13.3457, 13.3457}})));
    Modelica.Blocks.Interfaces.RealOutput Multiplier
      annotation (Placement(transformation(origin = {37.8357, -53.6686}, 
        extent = {{-13.5751, -13.5751}, {13.5751, 13.5751}})));
    Modelica.Blocks.Math.Gain gain(k = -1)
      annotation (Placement(transformation(origin = {-32.9559, -21.5846}, 
        extent = {{10, -10}, {-10, 10}})));
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-54.1861, -43.4637}, 
        extent = {{-14.3124, -14.3124}, {14.3124, 14.3124}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-54.3486, -62.2245}, 
        extent = {{-14.1499, -14.1499}, {14.1499, 14.1499}})));
    Modelica.Blocks.Math.Product product1_1
      annotation (Placement(transformation(origin = {-7.57508, -53.35}, 
        extent = {{-15.5251, -15.5251}, {15.5251, 15.5251}})));
    Modelica.Blocks.Discrete.UnitDelay Delay(samplePeriod = 10, y_start = 1, startTime = 10)
      annotation (Placement(transformation(origin = {-33.2745, 4.80228}, 
        extent = {{-10, -10}, {10, 10}})));
  equation 
    connect(u, product1_1.u1)
      annotation (Line(origin = {-41, 0}, 
        points = {{-14.3236, -44.6012}, {14.7948, -44.6012}, {14.7948, -44.0349}}, 
        color = {0, 0, 127}));
    connect(product1_1.u2, u1)
      annotation (Line(origin = {-89, -73}, 
        points = {{63.1198, 9.68493}, {33.5139, 9.68493}, {33.5139, 9.63795}}, 
        color = {0, 0, 127}));
    connect(product1_1.y, Multiplier)
      annotation (Line(origin = {90, -49}, 
        points = {{-80.4975, -4.35}, {-52.1643, -4.35}, {-52.1643, -4.66863}}, 
        color = {0, 0, 127}));
    connect(Delay.y, TicToc_irv)
      annotation (Line(origin = {56.0441, 20.4154}, 
        points = {{-78.3186, -15.6131}, {-17.7368, -15.6131}, {-17.7368, -15.6131}}, 
        color = {0, 0, 127}));
    connect(gain.y, Delay.u)
      annotation (Line(origin = {-43.9559, -0.584637}, 
        points = {{0, -21}, {-21, -21}, {-21, 5.38691}, {-1.31863, 5.38691}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(gain.u, Delay.y)
      annotation (Line(origin = {-12.9559, -0.584637}, 
        points = {{-8, -21}, {8, -21}, {8, 5.38691}, {-9.31863, 5.38691}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(TicToc, Delay.y)
      annotation (Line(origin = {39.0441, -0.584637}, 
        points = {{-2.48933, -20.8407}, {-29.7326, -20.8407}, {-29.7326, 5.38691}, {-61.3186, 5.38691}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
  end RunnableEntity3_subsystem;


  model Swc_Expfcns
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-137.095, 34.6109}, 
        extent = {{-15.4254, -15.4254}, {15.4254, 15.4254}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-137.104, 72.6565}, 
        extent = {{-14.7944, -14.7944}, {14.7944, 14.7944}})));
    Modelica.Blocks.Interfaces.RealInput u2
      annotation (Placement(transformation(origin = {-137.074, -19.0399}, 
        extent = {{-15.1099, -15.1099}, {15.1099, 15.1099}})));
    VisibleElements.RPORT RPort_E
      annotation (Placement(transformation(origin = {-104.316, 72.8204}, 
        extent = {{-9.37977, -8.12865}, {9.37977, 8.12865}})));
    VisibleElements.RPORT RPort_1
      annotation (Placement(transformation(origin = {-104.432, 34.7658}, 
        extent = {{-7.89958, -7.20378}, {7.89958, 7.20378}})));
    RunnableEntity1_subsystem runnable1_subsystem(constant1(k = 0), subsystem_EnableSubsystem(booleanToReal(realTrue = 1, realFalse = 0), add(k1 = 1)))
      annotation (Placement(transformation(origin = {20.1502, 53.5644}, 
        extent = {{-31.1578, -28.2568}, {31.1578, 28.2568}})));
    VisibleElements.PPORT PPort_1
      annotation (Placement(transformation(origin = {91.9512, 68.4283}, 
        extent = {{-13.3457, -13.3457}, {13.3457, 13.3457}})));
    RunnableEntity3_subsystem runnable3_subsystem
      annotation (Placement(transformation(origin = {-42.1719, -4.44309}, 
        extent = {{-29.2927, -17.3917}, {29.2927, 17.3917}})));
    VisibleElements.RPORT RPort_2(sample_time = 10)
      annotation (Placement(transformation(origin = {-103.268, -18.594}, 
        extent = {{-8.10704, -7.9493}, {8.10704, 7.9493}})));
    VisibleElements.PPORT PPort_2
      annotation (Placement(transformation(origin = {27.9013, 2.23277}, 
        extent = {{-13.3457, -13.3457}, {13.3457, 13.3457}})));
    RunnableEntity2_subsystem runnable2_subsystem
      annotation (Placement(transformation(origin = {132.666, 13.3332}, 
        extent = {{-29.3384, -34.0457}, {29.3384, 34.0457}})));
    VisibleElements.PPORT PPort_3
      annotation (Placement(transformation(origin = {197.971, 43.8812}, 
        extent = {{-13.6643, -13.6643}, {13.6643, 13.6643}})));
    VisibleElements.PPORT PPort_4
      annotation (Placement(transformation(origin = {197.254, 15.7057}, 
        extent = {{-13.8236, -13.8236}, {13.8236, 13.8236}})));
    VisibleElements.IRV irv1(sample_time_source = 1, sample_time_target = 1)
      annotation (Placement(transformation(origin = {73.1295, 45.9686}, 
        extent = {{-10, -10}, {10, 10}})));
    VisibleElements.IRV irv4(sample_time_source = 1, sample_time_target = 10)
      annotation (Placement(transformation(origin = {185.826, -17.0229}, 
        extent = {{-10, -10}, {10, 10}})));
    VisibleElements.IRV irv2(sample_time_source = 10)
      annotation (Placement(transformation(origin = {17.1752, -13.0272}, 
        extent = {{-10, -10}, {10, 10}})));
    VisibleElements.IRV irv3(sample_time_source = 10)
      annotation (Placement(transformation(origin = {-47.8208, 48.6719}, 
        extent = {{-10, -10}, {10, 10}})));
    parameter Real INC = 1;
    parameter Real K = 2;
    parameter Real LIMIT = 16;
    parameter Real RESET = 0;
    FunctionCaller1 functionCaller1_1
      annotation (Placement(transformation(origin = {-120.0, -50.0}, 
        extent = {{-10.0, -10.0}, {10.0, 10.0}})));
  equation 
    connect(u1, RPort_E.u)
      annotation (Line(origin = {-165, 80}, 
        points = {{27.8958, -7.34353}, {51.0702, -7.34353}, {51.0702, -7.42349}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(u, RPort_1.u)
      annotation (Line(origin = {-165, 36}, 
        points = {{27.9048, -1.38912}, {52.4709, -1.38912}, {52.4709, -1.45031}}, 
        color = {0, 0, 127}));
    connect(RPort_E.y_, runnable1_subsystem.ErrorStatus)
      annotation (Line(origin = {-79, 77}, 
        points = {{-15.8889, -4.50477}, {61.76084, -4.50477}, {61.76084, -5.91638}}, 
        color = {0, 0, 127}));
    connect(RPort_1.y_, runnable1_subsystem.u1)
      annotation (Line(origin = {-79, 47}, 
        points = {{-17.4933, -12.5224}, {-17.4933, 9.63943}, {61.76084, 9.63943}, {61.76084, 10.9159}}, 
        color = {0, 0, 127}));
    connect(runnable1_subsystem.y_, PPort_1)
      annotation (Line(origin = {95, 89}, 
        points = {{-40.5762, -20.742064}, {-3.20807, -20.742064}, {-3.20807, -20.731}}, 
        color = {0, 0, 127}));
    connect(u2, RPort_2.u)
      annotation (Line(origin = {-132.482, -23.452}, 
        points = {{-4.59168, 4.41213}, {20.9045, 4.41213}, {20.9045, 4.61957}}, 
        color = {0, 0, 127}));
    connect(runnable3_subsystem.u1, RPort_2.y_)
      annotation (Line(origin = {-86, -67}, 
        points = {{8.67686, 47.947882}, {-9.12022, 47.947882}, {-9.12022, 48.0881}}, 
        color = {0, 0, 127}));
    connect(runnable3_subsystem.TicToc_irv, PPort_2)
      annotation (Line(origin = {14, -46}, 
        points = {{-23.9499, 48.165756}, {13.9013, 48.165756}, {13.9013, 48.2328}}, 
        color = {0, 0, 127}));
    connect(runnable2_subsystem.y_, PPort_3)
      annotation (Line(origin = {229, 32}, 
        points = {{-64.0618, 11.9743}, {-31.0293, 11.9743}, {-31.0293, 11.8812}}, 
        color = {0, 0, 127}));
    connect(runnable2_subsystem.Substracter, PPort_4)
      annotation (Line(origin = {227, -1}, 
        points = {{-62.0618, 16.375942}, {-29.7463, 16.375942}, {-29.7463, 16.7057}}, 
        color = {0, 0, 127}));
    connect(runnable1_subsystem.adder, irv1.u)
      annotation (Line(origin = {60, 54}, 
        points = {{-5.57628, -8.91262}, {2.12949, -8.91262}, {2.12949, -8.63145}}, 
        color = {0, 0, 127}));
    connect(irv1.y_, runnable2_subsystem.u)
      annotation (Line(origin = {116, 26}, 
        points = {{-31.8705, 19.3686}, {-31.8705, -10.6241}, {-19.1268, -10.6241}}, 
        color = {0, 0, 127}));
    connect(runnable2_subsystem.Substracter_irv, irv4.u)
      annotation (Line(origin = {221, -17}, 
        points = {{-56.0618, 22.1622}, {-46.174, 22.1622}, {-46.174, -0.6229}}, 
        color = {0, 0, 127}));
    connect(irv4.y_, runnable3_subsystem.u)
      annotation (Line(origin = {100, -34}, 
        points = {{96.826, 16.3771}, {96.826, -1.78189}, {-244.202, -1.78189}, {-244.202, 31.29608}, {-177.32314, 31.29608}}, 
        color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
    connect(runnable3_subsystem.Multiplier, irv2.u)
      annotation (Line(origin = {4, -61}, 
        points = {{-13.9499, 47.1654}, {2.17519, 47.1654}, {2.17519, 47.3728}}, 
        color = {0, 0, 127}));
    connect(irv2.y_, runnable2_subsystem.u1)
      annotation (Line(origin = {91, -45}, 
        points = {{-62.8248, 31.3728}, {5.87315, 31.3728}, {5.87315, 36.5439}}, 
        color = {0, 0, 127}));
    connect(runnable3_subsystem.TicToc, irv3.u)
      annotation (Line(origin = {-50, -12}, 
        points = {{40.05007, 21.47027}, {48.2529, 21.47027}, {48.2529, 32.3666}, {-12.5475, 32.3666}, {-12.5475, 60.0719}, {-8.82083, 60.0719}}, 
        color = {0, 0, 127}));
    connect(irv3.y_, runnable1_subsystem.u2)
      annotation (Line(origin = {-65, 23}, 
        points = {{28.1792, 25.0719}, {49.3243, 25.0719}, {49.3243, 24.8363}}, 
        color = {0, 0, 127}));
  end Swc_Expfcns;



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
end Swc_Expfcns_Example;