model AUTOSAR_HeadLamp
  HeadLamp headlamp_left 
    annotation (Placement(transformation(origin={-36.1766,54.0008}, 
extent={{-19.5147,-14.713},{19.5147,14.713}})));
  M2.Examples.Swc_Expfcns_Example.Swc_Expfcns SWC 
    annotation (Placement(transformation(origin={-99.0473,18.7289}, 
extent={{-14.3623,-16.7092},{14.3623,16.7092}})));
  HeadLamp headlamp_right 
    annotation (Placement(transformation(origin={-36.0916,16.6583}, 
extent={{-19.0585,-15.853},{19.0585,15.853}})));
  Modelica.Blocks.Sources.Constant const(k=0) 
    annotation (Placement(transformation(origin={-140.498,28.2138}, 
extent={{-10,-10},{10,10}})));
equation
  connect(SWC.PPort_1, headlamp_left.switch) 
  annotation(Line(origin={-78,48}, 
points={{-5.20899,-18.1933},{2.2188,-18.1933},{2.2188,11.5586},{18.442,11.5586}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(SWC.PPort_3, headlamp_right.switch) 
  annotation(Line(origin={-70,-18}, 
points={{-13.2201,40.8535},{11.2393,40.8535},{11.2393,41.19}}, 
color={0,0,127}));
  connect(headlamp_right.voltageInput, SWC.PPort_4) 
  annotation(Line(origin={-70,-34}, 
points={{11.1233,43.0387},{-2.28284,43.0387},{-2.28284,49.5903},{-13.1728,49.5903}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(const.y, SWC.u1) 
  annotation(Line(origin={-174.646,26.7099}, 
points={{45.1479,1.50383},{59.6775,1.50383},{59.6775,2.66503}}, 
color={0,0,127}));
  connect(const.y, SWC.u) 
  annotation(Line(origin={-177.646,16.7099}, 
points={{48.1479,11.5038},{53.0257,11.5038},{53.0257,2.29503},{62.7483,2.29503}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(SWC.u2, const.y) 
  annotation(Line(origin={-177.646,8.70992}, 
points={{62.7144,0.0837911},{53.2776,0.0837911},{53.2776,19.5038},{48.1479,19.5038}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  connect(SWC.PPort_4, headlamp_left.voltageInput) 
  annotation(Line(origin={-62,18}, 
points={{-21.1728,-2.40973},{-10.4271,-2.40973},{-10.4271,27.6594},{2.31789,27.6594}}, 
color={0,0,127}),__MWORKS(BlockSystem(NamedSignal)));
  end AUTOSAR_HeadLamp;