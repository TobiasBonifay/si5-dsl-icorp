<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cd5c6996-8a39-4e85-8a37-55d526546668(ArduinoML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="87da0c0a-7e99-440e-a467-28249a7a2c96" name="ArduinoML" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="87da0c0a-7e99-440e-a467-28249a7a2c96" name="ArduinoML">
      <concept id="3849064725405907253" name="ArduinoML.structure.Sensor" flags="ng" index="1e9arc" />
      <concept id="3849064725405907252" name="ArduinoML.structure.Actuator" flags="ng" index="1e9ard" />
      <concept id="3849064725405907255" name="ArduinoML.structure.App" flags="ng" index="1e9are">
        <reference id="2283284740571247782" name="init_state" index="3lvAZT" />
        <child id="3849064725405907258" name="brick" index="1e9ar3" />
        <child id="2283284740571247776" name="state" index="3lvAZZ" />
      </concept>
      <concept id="3849064725405885460" name="ArduinoML.structure.Brick" flags="ng" index="1e9RJH">
        <property id="3849064725405907249" name="pin" index="1e9ar8" />
      </concept>
      <concept id="2283284740571247740" name="ArduinoML.structure.Transition" flags="ng" index="3lvAWz">
        <reference id="2283284740571247748" name="target" index="3lvAZr" />
        <reference id="2283284740571247745" name="sensor" index="3lvAZu" />
      </concept>
      <concept id="2283284740571247755" name="ArduinoML.structure.Action" flags="ng" index="3lvAZk">
        <reference id="2283284740571247762" name="actuator" index="3lvAZd" />
      </concept>
      <concept id="2283284740571225907" name="ArduinoML.structure.State" flags="ng" index="3lvChG">
        <child id="2283284740571247769" name="transition" index="3lvAZ6" />
        <child id="2283284740571247766" name="actions" index="3lvAZ9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1e9are" id="3lEBZ_VjMCq">
    <property role="TrG5h" value="RedApp" />
    <ref role="3lvAZT" node="1YJQPZaODZr" resolve="off" />
    <node concept="1e9ard" id="3lEBZ_VjMCs" role="1e9ar3">
      <property role="TrG5h" value="buzzer" />
      <property role="1e9ar8" value="12" />
    </node>
    <node concept="1e9arc" id="3lEBZ_VjMCy" role="1e9ar3">
      <property role="TrG5h" value="button1" />
      <property role="1e9ar8" value="8" />
    </node>
    <node concept="1e9arc" id="5sHdtXEhWBU" role="1e9ar3">
      <property role="TrG5h" value="button2" />
      <property role="1e9ar8" value="9" />
    </node>
    <node concept="3lvChG" id="1YJQPZaODZr" role="3lvAZZ">
      <property role="TrG5h" value="off" />
      <node concept="3lvAZk" id="1YJQPZaODZ_" role="3lvAZ9">
        <ref role="3lvAZd" node="3lEBZ_VjMCs" resolve="buzzer" />
      </node>
      <node concept="3lvAWz" id="1YJQPZaODZs" role="3lvAZ6">
        <ref role="3lvAZu" node="3lEBZ_VjMCy" resolve="button" />
        <ref role="3lvAZr" node="1YJQPZaODZv" resolve="on" />
      </node>
      <node concept="3lvAWz" id="5sHdtXEixjE" role="3lvAZ6">
        <ref role="3lvAZu" node="5sHdtXEhWBU" resolve="button2" />
        <ref role="3lvAZr" node="1YJQPZaODZv" resolve="on" />
      </node>
    </node>
    <node concept="3lvChG" id="1YJQPZaODZv" role="3lvAZZ">
      <property role="TrG5h" value="on" />
      <node concept="3lvAZk" id="1YJQPZaODZB" role="3lvAZ9">
        <ref role="3lvAZd" node="3lEBZ_VjMCs" resolve="red_led" />
      </node>
      <node concept="3lvAWz" id="1YJQPZaODZw" role="3lvAZ6">
        <ref role="3lvAZu" node="3lEBZ_VjMCy" resolve="button" />
        <ref role="3lvAZr" node="1YJQPZaODZr" resolve="off" />
      </node>
    </node>
  </node>
</model>

