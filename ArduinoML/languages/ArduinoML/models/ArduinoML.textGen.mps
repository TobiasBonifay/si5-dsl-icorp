<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6e15b50-6510-45ce-b142-3fcb1ddc43ae(ArduinoML.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="5893" ref="r:c3f7684f-829d-4d32-b054-5894ce11edee(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="7166719696753421196" name="jetbrains.mps.lang.textGen.structure.EncodingLiteral" flags="ng" index="22Jior">
        <property id="7166719696753421197" name="encoding" index="22Jioq" />
      </concept>
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
        <child id="1224137887853744062" name="encoding" index="19oSPi" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="3lEBZ_VjZuE">
    <ref role="WuzLi" to="5893:3lEBZ_Vjz$R" resolve="App" />
    <node concept="29tfMY" id="3lEBZ_Vk0Ui" role="29tGrW">
      <node concept="3clFbS" id="3lEBZ_Vk0Uj" role="2VODD2">
        <node concept="3clFbF" id="3lEBZ_Vk2l8" role="3cqZAp">
          <node concept="2OqwBi" id="3lEBZ_Vk50c" role="3clFbG">
            <node concept="117lpO" id="3lEBZ_Vk4Xp" role="2Oq$k0" />
            <node concept="3TrcHB" id="3lEBZ_Vk56a" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="3lEBZ_Vk0XV" role="33IsuW">
      <node concept="3clFbS" id="3lEBZ_Vk0XW" role="2VODD2">
        <node concept="3clFbF" id="3lEBZ_Vk0Yx" role="3cqZAp">
          <node concept="Xl_RD" id="3lEBZ_Vk0Yw" role="3clFbG">
            <property role="Xl_RC" value="ino" />
          </node>
        </node>
      </node>
    </node>
    <node concept="22Jior" id="3lEBZ_Vk5TI" role="19oSPi">
      <property role="22Jioq" value="UTF-8" />
    </node>
    <node concept="11bSqf" id="3lEBZ_Vky82" role="11c4hB">
      <node concept="3clFbS" id="3lEBZ_Vky83" role="2VODD2">
        <node concept="lc7rE" id="3lEBZ_Vl2c6" role="3cqZAp">
          <node concept="la8eA" id="3lEBZ_Vl2jx" role="lcghm">
            <property role="lacIc" value="// code generated par moi avec text gen les bogoss" />
          </node>
          <node concept="l8MVK" id="3lEBZ_Vl2sT" role="lcghm" />
        </node>
        <node concept="lc7rE" id="1YJQPZaNPas" role="3cqZAp">
          <node concept="l8MVK" id="1YJQPZaNPdX" role="lcghm" />
        </node>
        <node concept="3izx1p" id="5sHdtXEizBA" role="3cqZAp">
          <node concept="3clFbS" id="5sHdtXEizBC" role="3izTki">
            <node concept="3clFbF" id="5sHdtXEizFu" role="3cqZAp">
              <node concept="2OqwBi" id="5sHdtXEiAuP" role="3clFbG">
                <node concept="2OqwBi" id="5sHdtXEizNO" role="2Oq$k0">
                  <node concept="117lpO" id="5sHdtXEizFt" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5sHdtXEi$7o" role="2OqNvi">
                    <ref role="3TtcxE" to="5893:3lEBZ_Vjz$U" resolve="brick" />
                  </node>
                </node>
                <node concept="2es0OD" id="5sHdtXEiEZR" role="2OqNvi">
                  <node concept="1bVj0M" id="5sHdtXEiEZT" role="23t8la">
                    <node concept="3clFbS" id="5sHdtXEiEZU" role="1bW5cS">
                      <node concept="lc7rE" id="5sHdtXEiF9k" role="3cqZAp">
                        <node concept="la8eA" id="5sHdtXEiFbK" role="lcghm">
                          <property role="lacIc" value="int " />
                        </node>
                        <node concept="l9hG8" id="5sHdtXEiJa2" role="lcghm">
                          <node concept="2OqwBi" id="5sHdtXEiN41" role="lb14g">
                            <node concept="37vLTw" id="5sHdtXEiMRT" role="2Oq$k0">
                              <ref role="3cqZAo" node="5sHdtXEiEZV" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="5sHdtXEiNRd" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="la8eA" id="5sHdtXEiJQR" role="lcghm">
                          <property role="lacIc" value=" = " />
                        </node>
                        <node concept="l9hG8" id="5sHdtXEiK5x" role="lcghm">
                          <node concept="2YIFZM" id="5sHdtXEiKgr" role="lb14g">
                            <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <node concept="2OqwBi" id="5sHdtXEiOJH" role="37wK5m">
                              <node concept="37vLTw" id="5sHdtXEiOpl" role="2Oq$k0">
                                <ref role="3cqZAo" node="5sHdtXEiEZV" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="5sHdtXEiPsX" role="2OqNvi">
                                <ref role="3TsBF5" to="5893:3lEBZ_Vjz$L" resolve="pin" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="la8eA" id="5sHdtXEiUSX" role="lcghm">
                          <property role="lacIc" value=";" />
                        </node>
                        <node concept="l8MVK" id="5sHdtXEj0Dq" role="lcghm" />
                      </node>
                    </node>
                    <node concept="gl6BB" id="5sHdtXEiEZV" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5sHdtXEiEZW" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3lEBZ_Vky9L" role="3cqZAp">
          <node concept="la8eA" id="3lEBZ_Vkyad" role="lcghm">
            <property role="lacIc" value="void setup {" />
          </node>
          <node concept="l8MVK" id="3lEBZ_Vl2s2" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5sHdtXEjae5" role="3cqZAp">
          <node concept="l9S2W" id="5sHdtXEjaj6" role="lcghm">
            <node concept="2OqwBi" id="5sHdtXEjapY" role="lbANJ">
              <node concept="117lpO" id="5sHdtXEjaj$" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5sHdtXEjaHx" role="2OqNvi">
                <ref role="3TtcxE" to="5893:3lEBZ_Vjz$U" resolve="brick" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="3lEBZ_VkyjS" role="3cqZAp">
          <node concept="la8eA" id="3lEBZ_Vkykq" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="3lEBZ_VkGzA" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5sHdtXEbFxU" role="3cqZAp">
          <node concept="l8MVK" id="5sHdtXEbFET" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5sHdtXEbFq7" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEbFtE" role="lcghm">
            <property role="lacIc" value="long time = 0; long debounce = 200;" />
          </node>
          <node concept="l8MVK" id="5sHdtXEcsfc" role="lcghm" />
        </node>
        <node concept="lc7rE" id="5sHdtXEc5Jy" role="3cqZAp">
          <node concept="l9S2W" id="5sHdtXEc5SC" role="lcghm">
            <node concept="2OqwBi" id="5sHdtXEc5Zw" role="lbANJ">
              <node concept="117lpO" id="5sHdtXEc5T6" role="2Oq$k0" />
              <node concept="3Tsc0h" id="5sHdtXEc6iX" role="2OqNvi">
                <ref role="3TtcxE" to="5893:1YJQPZaOriw" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5sHdtXEbFIP" role="3cqZAp">
          <node concept="l8MVK" id="5sHdtXEbFMs" role="lcghm" />
        </node>
        <node concept="3clFbH" id="5sHdtXEbG2$" role="3cqZAp" />
        <node concept="lc7rE" id="5sHdtXEbFY8" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEbG1M" role="lcghm">
            <property role="lacIc" value="void loop() { state_off(); }" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3lEBZ_Vk7fT">
    <ref role="WuzLi" to="5893:3lEBZ_Vjz$O" resolve="Actuator" />
    <node concept="11bSqf" id="3lEBZ_Vk7fU" role="11c4hB">
      <node concept="3clFbS" id="3lEBZ_Vk7fV" role="2VODD2">
        <node concept="1bpajm" id="5sHdtXEkxXV" role="3cqZAp" />
        <node concept="lc7rE" id="5sHdtXEj2DD" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEj4W8" role="lcghm">
            <property role="lacIc" value="pinMode(" />
          </node>
          <node concept="l9hG8" id="5sHdtXEj4YQ" role="lcghm">
            <node concept="2OqwBi" id="5sHdtXEj56N" role="lb14g">
              <node concept="117lpO" id="5sHdtXEj4Zq" role="2Oq$k0" />
              <node concept="3TrcHB" id="5sHdtXEj5sR" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEj5wA" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="la8eA" id="5sHdtXEj5yH" role="lcghm">
            <property role="lacIc" value="OUTPUT);" />
          </node>
          <node concept="l8MVK" id="5sHdtXEj5Ak" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3lEBZ_Vke_y">
    <ref role="WuzLi" to="5893:3lEBZ_Vjz$P" resolve="Sensor" />
    <node concept="11bSqf" id="3lEBZ_Vke_z" role="11c4hB">
      <node concept="3clFbS" id="3lEBZ_Vke_$" role="2VODD2">
        <node concept="1bpajm" id="5sHdtXEkdc$" role="3cqZAp" />
        <node concept="lc7rE" id="5sHdtXEj7dw" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEj7dZ" role="lcghm">
            <property role="lacIc" value="pinMode(" />
          </node>
          <node concept="l9hG8" id="5sHdtXEj7gh" role="lcghm">
            <node concept="2OqwBi" id="5sHdtXEj7oe" role="lb14g">
              <node concept="117lpO" id="5sHdtXEj7gP" role="2Oq$k0" />
              <node concept="3TrcHB" id="5sHdtXEj7$z" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEj7Ci" role="lcghm">
            <property role="lacIc" value=", " />
          </node>
          <node concept="la8eA" id="5sHdtXEj7Ga" role="lcghm">
            <property role="lacIc" value="INPUT);" />
          </node>
          <node concept="l8MVK" id="5sHdtXEj7Lt" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5sHdtXE9azK">
    <ref role="WuzLi" to="5893:1YJQPZaOrib" resolve="Action" />
    <node concept="11bSqf" id="5sHdtXE9azL" role="11c4hB">
      <node concept="3clFbS" id="5sHdtXE9azM" role="2VODD2">
        <node concept="lc7rE" id="5sHdtXE9a$e" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXE9a$F" role="lcghm">
            <property role="lacIc" value="digitalWrite(" />
          </node>
          <node concept="l9hG8" id="5sHdtXE9eZd" role="lcghm">
            <node concept="2YIFZM" id="5sHdtXE9hfe" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5sHdtXE9iaQ" role="37wK5m">
                <node concept="2OqwBi" id="5sHdtXE9hE3" role="2Oq$k0">
                  <node concept="117lpO" id="5sHdtXE9hs5" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5sHdtXE9hVV" role="2OqNvi">
                    <ref role="3Tt5mk" to="5893:1YJQPZaOrii" resolve="actuator" />
                  </node>
                </node>
                <node concept="3TrcHB" id="5sHdtXEbwjd" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXE9lSe" role="lcghm">
            <property role="lacIc" value=" ," />
          </node>
          <node concept="l9hG8" id="5sHdtXE9nLz" role="lcghm">
            <node concept="2YIFZM" id="5sHdtXEa1WV" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5sHdtXEetrg" role="37wK5m">
                <node concept="2OqwBi" id="5sHdtXEa2kC" role="2Oq$k0">
                  <node concept="117lpO" id="5sHdtXEa1Yb" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5sHdtXEa3MN" role="2OqNvi">
                    <ref role="3TsBF5" to="5893:1YJQPZaOrie" resolve="status" />
                  </node>
                </node>
                <node concept="24Tkf9" id="5sHdtXEetEc" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEeta1" role="lcghm">
            <property role="lacIc" value=");" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5sHdtXEbnGo">
    <ref role="WuzLi" to="5893:1YJQPZaOrhW" resolve="Transition" />
    <node concept="11bSqf" id="5sHdtXEbnGp" role="11c4hB">
      <node concept="3clFbS" id="5sHdtXEbnGq" role="2VODD2">
        <node concept="lc7rE" id="5sHdtXEbnGQ" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEbnHj" role="lcghm">
            <property role="lacIc" value="if (digitalRead(" />
          </node>
          <node concept="l9hG8" id="5sHdtXEbpGb" role="lcghm">
            <node concept="2OqwBi" id="5sHdtXEbsqa" role="lb14g">
              <node concept="2OqwBi" id="5sHdtXEbpP9" role="2Oq$k0">
                <node concept="117lpO" id="5sHdtXEbpGJ" role="2Oq$k0" />
                <node concept="3TrEf2" id="5sHdtXEbsdT" role="2OqNvi">
                  <ref role="3Tt5mk" to="5893:1YJQPZaOri1" resolve="sensor" />
                </node>
              </node>
              <node concept="3TrcHB" id="5sHdtXEbu5T" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEbxBw" role="lcghm">
            <property role="lacIc" value=") == " />
          </node>
          <node concept="l9hG8" id="5sHdtXEbxI9" role="lcghm">
            <node concept="2YIFZM" id="5sHdtXEbxLr" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5sHdtXEbych" role="37wK5m">
                <node concept="117lpO" id="5sHdtXEbxYj" role="2Oq$k0" />
                <node concept="3TrcHB" id="5sHdtXEbysq" role="2OqNvi">
                  <ref role="3TsBF5" to="5893:1YJQPZaOrhY" resolve="status" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEbyR_" role="lcghm">
            <property role="lacIc" value=" &amp;&amp; guard ) {" />
          </node>
          <node concept="l8MVK" id="5sHdtXEbzSw" role="lcghm" />
        </node>
        <node concept="1bpajm" id="5sHdtXEbzWJ" role="3cqZAp" />
        <node concept="1bpajm" id="5sHdtXEgiEb" role="3cqZAp" />
        <node concept="lc7rE" id="5sHdtXEgDye" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEgDBp" role="lcghm">
            <property role="lacIc" value="time = millis();" />
          </node>
          <node concept="l8MVK" id="5sHdtXEgDJK" role="lcghm" />
        </node>
        <node concept="1bpajm" id="5sHdtXEgBrJ" role="3cqZAp" />
        <node concept="1bpajm" id="5sHdtXEgY$V" role="3cqZAp" />
        <node concept="lc7rE" id="5sHdtXEgBzA" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEgBBB" role="lcghm">
            <property role="lacIc" value="state_" />
          </node>
          <node concept="l9hG8" id="5sHdtXEgBGZ" role="lcghm">
            <node concept="2YIFZM" id="5sHdtXEgBM4" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="5sHdtXEgCrm" role="37wK5m">
                <node concept="117lpO" id="5sHdtXEgC4T" role="2Oq$k0" />
                <node concept="3TrEf2" id="5sHdtXEgCHe" role="2OqNvi">
                  <ref role="3Tt5mk" to="5893:1YJQPZaOri4" resolve="target" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEgCQ5" role="lcghm">
            <property role="lacIc" value="(); " />
          </node>
          <node concept="l8MVK" id="5sHdtXEgCY2" role="lcghm" />
        </node>
        <node concept="1bpajm" id="5sHdtXEfX8I" role="3cqZAp" />
        <node concept="lc7rE" id="5sHdtXEbBjv" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEbBmR" role="lcghm">
            <property role="lacIc" value="} else {  state_" />
          </node>
          <node concept="l9hG8" id="5sHdtXEbBIT" role="lcghm">
            <node concept="2OqwBi" id="5sHdtXEbIov" role="lb14g">
              <node concept="2OqwBi" id="5sHdtXEbHTU" role="2Oq$k0">
                <node concept="117lpO" id="5sHdtXEbDJn" role="2Oq$k0" />
                <node concept="3TrEf2" id="5sHdtXEbIba" role="2OqNvi">
                  <ref role="3Tt5mk" to="5893:1YJQPZaOri4" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="5sHdtXEbIJm" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEbEN6" role="lcghm">
            <property role="lacIc" value="(); }" />
          </node>
          <node concept="l8MVK" id="5sHdtXEcsQM" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5sHdtXEbG6a">
    <ref role="WuzLi" to="5893:1YJQPZaOlWN" resolve="State" />
    <node concept="11bSqf" id="5sHdtXEbG6b" role="11c4hB">
      <node concept="3clFbS" id="5sHdtXEbG6c" role="2VODD2">
        <node concept="lc7rE" id="5sHdtXEbG6C" role="3cqZAp">
          <node concept="la8eA" id="5sHdtXEbG75" role="lcghm">
            <property role="lacIc" value="void state_" />
          </node>
          <node concept="l9hG8" id="5sHdtXEbG8G" role="lcghm">
            <node concept="2OqwBi" id="5sHdtXEbGga" role="lb14g">
              <node concept="117lpO" id="5sHdtXEbG9h" role="2Oq$k0" />
              <node concept="3TrcHB" id="5sHdtXEbGEH" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="5sHdtXEbJjf" role="lcghm">
            <property role="lacIc" value="() {" />
          </node>
          <node concept="l8MVK" id="5sHdtXEcsjv" role="lcghm" />
        </node>
        <node concept="3izx1p" id="5sHdtXEdJ$t" role="3cqZAp">
          <node concept="3clFbS" id="5sHdtXEdJ$v" role="3izTki">
            <node concept="1bpajm" id="5sHdtXEfaUW" role="3cqZAp" />
            <node concept="lc7rE" id="5sHdtXEe7dF" role="3cqZAp">
              <node concept="l9S2W" id="5sHdtXEe7eb" role="lcghm">
                <node concept="2OqwBi" id="5sHdtXEe7l3" role="lbANJ">
                  <node concept="117lpO" id="5sHdtXEe7eD" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5sHdtXEe7El" role="2OqNvi">
                    <ref role="3TtcxE" to="5893:1YJQPZaOrim" resolve="actions" />
                  </node>
                </node>
              </node>
              <node concept="l8MVK" id="5sHdtXEe7Hs" role="lcghm" />
            </node>
            <node concept="1bpajm" id="5sHdtXEfaXh" role="3cqZAp" />
            <node concept="lc7rE" id="5sHdtXEe6_7" role="3cqZAp">
              <node concept="la8eA" id="5sHdtXEe6_z" role="lcghm">
                <property role="lacIc" value="boolean guard =  millis() - time &gt; debounce;" />
              </node>
              <node concept="l8MVK" id="5sHdtXEe7KQ" role="lcghm" />
            </node>
            <node concept="1bpajm" id="5sHdtXEfaZC" role="3cqZAp" />
            <node concept="lc7rE" id="5sHdtXEicI5" role="3cqZAp">
              <node concept="l9S2W" id="5sHdtXEicIU" role="lcghm">
                <node concept="2OqwBi" id="5sHdtXEicPM" role="lbANJ">
                  <node concept="117lpO" id="5sHdtXEicJo" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5sHdtXEidav" role="2OqNvi">
                    <ref role="3TtcxE" to="5893:1YJQPZaOrip" resolve="transition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="5sHdtXEe7Xv" role="3cqZAp">
              <node concept="la8eA" id="5sHdtXEe7Z0" role="lcghm">
                <property role="lacIc" value="}" />
              </node>
              <node concept="l8MVK" id="5sHdtXEe80c" role="lcghm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

