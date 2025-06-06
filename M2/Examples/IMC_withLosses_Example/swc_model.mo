package swc_model
  model swc
    Runnable runnable 
      annotation (Placement(transformation(origin={40.5139,-2.03349}, 
extent={{-26.1117,-21.419},{26.1117,21.419}})));
    VisibleElements.RPORT rPORT 
      annotation (Placement(transformation(origin={-25.9667,-0.625645}, 
extent={{-10,-10},{10,10}})));
    VisibleElements.PPORT pport 
      annotation (Placement(transformation(origin={109.81,-1.87709}, 
extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-119.821,-2.18999}, 
extent={{-20,-20},{20,20}})));
  equation
    connect(runnable.u, rPORT.y_) 
    annotation(Line(origin={-124,39}, 
points={{133.063,-40.2964},{108.083,-40.2964},{108.083,-40.0256}}, 
color={0,0,127}));
    connect(runnable.y, pport) 
    annotation(Line(origin={-25,37}, 
points={{94.3507,-39.2345},{134.81,-39.2345},{134.81,-38.87709}}, 
color={0,0,127}));
    connect(rPORT.u, u) 
    annotation(Line(origin={-185,38}, 
points={{148.783,-38.9256},{65.179,-38.9256},{65.179,-40.18999}}, 
color={0,0,127}));

  end swc;
  model Runnable
  extends M2.AUTOSARTemplates.SWComponentTemplate.SwcInternalBehavior.RunnableEntity;
    parameter Modelica.Units.SI.Power PNominal=18500 "Nominal output";

    Modelica.Blocks.Sources.Ramp rampQS(
      height=1.2*PNominal, 
      offset=0, 
      startTime=4.5, 
      duration=5.5) annotation (Placement(transformation(origin={-69.1287,-0.324014}, 
  extent={{-10,-10},{10,10}})));

        Modelica.Blocks.Math.Feedback feedbackQS annotation (Placement(transformation(origin={-11.2849,-0.949711}, 
  extent={{-10,10},{10,-10}})));


          Modelica.Blocks.Continuous.PI PIQS(
      k=0.01, 
      T=0.01, 
      initType=Modelica.Blocks.Types.Init.InitialState) annotation (Placement(transformation(origin={23.7207,-1.26261}, 
  extent={{-10,-10},{10,10}})));

          Modelica.Blocks.Math.Gain gainQS(k=-1) annotation (Placement(transformation(origin={58.4134,-0.949761}, 
  extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealInput u 
      annotation (Placement(transformation(origin={-120.447,3.44142}, 
  extent={{-20,-20},{20,20}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation (Placement(transformation(origin={110.436,-0.938561}, 
  extent={{-10,-10},{10,10}})));
    equation
    connect(feedbackQS.u1, rampQS.y) 
    annotation(Line(origin={-104.212,13.2514}, 
  points={{84.9271,-14.2011},{46.0833,-14.2011},{46.0833,-13.5754}}, 
  color={0,0,127}));
    connect(feedbackQS.y, PIQS.u) 
    annotation(Line(origin={-65.2123,13.2514}, 
  points={{62.9274,-14.2011},{76.933,-14.2011},{76.933,-14.514}}, 
  color={0,0,127}));
    connect(gainQS.u, PIQS.y) 
    annotation(Line(origin={-29.2123,14.2514}, 
  points={{75.6257,-15.2012},{63.933,-15.2012},{63.933,-15.514}}, 
  color={0,0,127}));
    connect(feedbackQS.u2, u) 
    annotation(Line(origin={-153,23}, 
  points={{141.715,-15.9497},{141.715,-2.66473},{61.3351,-2.66473},{61.3351,-19.55858},{32.553,-19.55858}}, 
  color={0,0,127}));
    connect(gainQS.y, y) 
    annotation(Line(origin={20,14}, 
  points={{49.4134,-14.9498},{90.436,-14.9498},{90.436,-14.938561}}, 
  color={0,0,127}));
    end Runnable;

end swc_model;