within M2;
package Utilities

  model comparator
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-120, 68}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealInput u1
      annotation (Placement(transformation(origin = {-120, -58}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.BooleanOutput y
      annotation (Placement(transformation(origin = {110, 10}, 
        extent = {{-10, -10}, {10, 10}})));
    annotation (Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
      grid = {2, 2}), graphics = {Rectangle(origin = {0, 0}, 
      fillColor = {255, 255, 255}, 
      fillPattern = FillPattern.Solid, 
      extent = {{-100, 100}, {100, -100}}), Text(origin = {-4, 10}, 
      lineColor = {0, 0, 0}, 
      extent = {{-55, 32}, {55, -32}}, 
      textString = "==", 
      textStyle = {TextStyle.None}, 
      textColor = {0, 0, 0}, 
      horizontalAlignment = LinePattern.None)}));
  algorithm 
    y := u == u1;
  end comparator;

  model DiscreteTimeIntegrator
    import Modelica.Blocks.Types.Init;
    parameter Real k(unit = "1") = 1 "Integrator gain";
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(origin = {-120, 8.000000000000002}, 
        extent = {{-20, -20}, {20, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y
      annotation (Placement(transformation(origin = {110, 8.000000000000002}, 
        extent = {{-10, -10}, {10, 10}})));
    annotation (Line(origin = {-121, 20}, 
      points = {{-39, 0}, {39, 0}}, 
      color = {0, 0, 127}));
    Real temp "涓存椂绉垎鍊�";
    parameter Real init_val = 0 "绉垎鍒濆€�";
    parameter Real sample_time = 1 "閲囨牱鏃堕棿";
    Real last_sample_time(start = 0);
  initial equation 
    temp = init_val;
  equation 
    der(temp) = k * u;
  algorithm 
    when time - last_sample_time >= sample_time then 
      y := temp;
      last_sample_time := time;
    end when;
  end DiscreteTimeIntegrator;
  package MultiInterger
    type Interger01 = Integer(min = 0, max = 1)
      annotation (Protection(access = Access.diagram));


    type Interger0Unbound = Integer(min = 0)
      annotation (Protection(access = Access.diagram));



    type Interger1Unbound = Integer(min = 1)
      annotation (Protection(access = Access.diagram));
    annotation (Protection(access = Access.diagram));
  end MultiInterger;



  model DataStoreMemory
    annotation (Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, 
      grid = {2.0, 2.0}), graphics = {Rectangle(origin = {0.0, 7.0}, 
      fillColor = {255, 255, 255}, 
      fillPattern = FillPattern.Solid, 
      extent = {{-100.0, 53.0}, {100.0, -53.0}}), Text(origin = {4.0, 9.0}, 
      lineColor = {0, 0, 0}, 
      extent = {{-70.0, 37.0}, {70.0, -37.0}}, 
      textString = "DataStoreMemory", 
      textStyle = {TextStyle.None}, 
      textColor = {0, 0, 0}, 
      horizontalAlignment = LinePattern.None)}));
    parameter Real initVal = 0;
    Real globalVar;
  equation 
    globalVar = initVal;
  end DataStoreMemory;
end Utilities;