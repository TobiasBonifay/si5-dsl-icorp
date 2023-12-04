<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c3f7684f-829d-4d32-b054-5894ce11edee(ArduinoML.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3lEBZ_Vjugk">
    <property role="EcuMT" value="3849064725405885460" />
    <property role="TrG5h" value="Brick" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="3lEBZ_Vjz$I" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="3lEBZ_Vjz$L" role="1TKVEl">
      <property role="IQ2nx" value="3849064725405907249" />
      <property role="TrG5h" value="pin" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3lEBZ_Vjz$O">
    <property role="EcuMT" value="3849064725405907252" />
    <property role="TrG5h" value="Actuator" />
    <ref role="1TJDcQ" node="3lEBZ_Vjugk" resolve="Brick" />
  </node>
  <node concept="1TIwiD" id="3lEBZ_Vjz$P">
    <property role="EcuMT" value="3849064725405907253" />
    <property role="TrG5h" value="Sensor" />
    <ref role="1TJDcQ" node="3lEBZ_Vjugk" resolve="Brick" />
  </node>
  <node concept="1TIwiD" id="3lEBZ_Vjz$R">
    <property role="EcuMT" value="3849064725405907255" />
    <property role="TrG5h" value="App" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="3lEBZ_Vjz$S" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="3lEBZ_Vjz$U" role="1TKVEi">
      <property role="IQ2ns" value="3849064725405907258" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="brick" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="3lEBZ_Vjugk" resolve="Brick" />
    </node>
    <node concept="1TJgyj" id="1YJQPZaOriw" role="1TKVEi">
      <property role="IQ2ns" value="2283284740571247776" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="state" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="1YJQPZaOlWN" resolve="State" />
    </node>
    <node concept="1TJgyj" id="1YJQPZaOriA" role="1TKVEi">
      <property role="IQ2ns" value="2283284740571247782" />
      <property role="20kJfa" value="init_state" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1YJQPZaOlWN" resolve="State" />
    </node>
  </node>
  <node concept="1TIwiD" id="1YJQPZaOlWN">
    <property role="EcuMT" value="2283284740571225907" />
    <property role="TrG5h" value="State" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="1YJQPZaOrhd" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="1YJQPZaOrim" role="1TKVEi">
      <property role="IQ2ns" value="2283284740571247766" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1YJQPZaOrib" resolve="Action" />
    </node>
    <node concept="1TJgyj" id="1YJQPZaOrip" role="1TKVEi">
      <property role="IQ2ns" value="2283284740571247769" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transition" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="1YJQPZaOrhW" resolve="Transition" />
    </node>
  </node>
  <node concept="25R3W" id="1YJQPZaOrhg">
    <property role="3F6X1D" value="2283284740571247696" />
    <property role="TrG5h" value="STATUS" />
    <ref role="1H5jkz" node="1YJQPZaOrhh" resolve="high" />
    <node concept="25R33" id="1YJQPZaOrhh" role="25R1y">
      <property role="3tVfz5" value="2283284740571247697" />
      <property role="TrG5h" value="HIGH" />
      <property role="1L1pqM" value="high" />
    </node>
    <node concept="25R33" id="1YJQPZaOrhq" role="25R1y">
      <property role="3tVfz5" value="2283284740571247706" />
      <property role="TrG5h" value="LOW" />
      <property role="1L1pqM" value="low" />
    </node>
  </node>
  <node concept="1TIwiD" id="1YJQPZaOrhW">
    <property role="EcuMT" value="2283284740571247740" />
    <property role="TrG5h" value="Transition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="1YJQPZaOrhY" role="1TKVEl">
      <property role="IQ2nx" value="2283284740571247742" />
      <property role="TrG5h" value="status" />
      <ref role="AX2Wp" node="1YJQPZaOrhg" resolve="STATUS" />
    </node>
    <node concept="1TJgyj" id="1YJQPZaOri1" role="1TKVEi">
      <property role="IQ2ns" value="2283284740571247745" />
      <property role="20kJfa" value="sensor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3lEBZ_Vjz$P" resolve="Sensor" />
    </node>
    <node concept="1TJgyj" id="1YJQPZaOri4" role="1TKVEi">
      <property role="IQ2ns" value="2283284740571247748" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1YJQPZaOlWN" resolve="State" />
    </node>
  </node>
  <node concept="1TIwiD" id="1YJQPZaOrib">
    <property role="EcuMT" value="2283284740571247755" />
    <property role="TrG5h" value="Action" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="1YJQPZaOrie" role="1TKVEl">
      <property role="IQ2nx" value="2283284740571247758" />
      <property role="TrG5h" value="status" />
      <ref role="AX2Wp" node="1YJQPZaOrhg" resolve="STATUS" />
    </node>
    <node concept="1TJgyj" id="1YJQPZaOrii" role="1TKVEi">
      <property role="IQ2ns" value="2283284740571247762" />
      <property role="20kJfa" value="actuator" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3lEBZ_Vjz$O" resolve="Actuator" />
    </node>
  </node>
</model>

