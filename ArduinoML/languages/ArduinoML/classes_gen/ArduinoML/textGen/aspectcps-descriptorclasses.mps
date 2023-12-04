<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:ff7336c(checkpoints/ArduinoML.textGen@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <attribute name="user-objects" value="true" />
  <languages />
  <imports>
    <import index="3e2j" ref="r:a6e15b50-6510-45ce-b142-3fcb1ddc43ae(ArduinoML.textGen)" />
    <import index="kpbf" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.impl(MPS.TextGen/)" />
    <import index="yfwt" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text.rt(MPS.TextGen/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="tpcf" ref="r:00000000-0000-4000-0000-011c89590293(jetbrains.mps.lang.structure.generator_new.baseLanguage@generator)" />
    <import index="5893" ref="r:c3f7684f-829d-4d32-b054-5894ce11edee(ArduinoML.structure)" />
    <import index="ao3" ref="7124e466-fc92-4803-a656-d7a6b7eb3910/java:jetbrains.mps.text(MPS.TextGen/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1174914042989" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType" flags="in" index="2eloPW">
        <property id="1174914081067" name="fqClassName" index="2ely0U" />
      </concept>
      <concept id="1100832983841311024" name="jetbrains.mps.baseLanguageInternal.structure.InternalClassCreator" flags="nn" index="xCZzO">
        <property id="1100832983841311026" name="fqClassName" index="xCZzQ" />
        <child id="1100832983841311029" name="type" index="xCZzL" />
      </concept>
      <concept id="1173995204289" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticFieldReference" flags="nn" index="1n$iZg">
        <property id="1173995448817" name="fqClassName" index="1n_ezw" />
        <property id="1173995466678" name="fieldName" index="1n_iUB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1966870290083281362" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="ng" index="24Tkf9" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
  <node concept="312cEu" id="0">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Action_TextGen" />
    <uo k="s:originTrace" v="n:6281736288926476528" />
    <node concept="3Tm1VV" id="1" role="1B3o_S">
      <uo k="s:originTrace" v="n:6281736288926476528" />
    </node>
    <node concept="3uibUv" id="2" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:6281736288926476528" />
    </node>
    <node concept="3clFb_" id="3" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:6281736288926476528" />
      <node concept="3cqZAl" id="4" role="3clF45">
        <uo k="s:originTrace" v="n:6281736288926476528" />
      </node>
      <node concept="3Tm1VV" id="5" role="1B3o_S">
        <uo k="s:originTrace" v="n:6281736288926476528" />
      </node>
      <node concept="3clFbS" id="6" role="3clF47">
        <uo k="s:originTrace" v="n:6281736288926476528" />
        <node concept="3cpWs8" id="9" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288926476528" />
          <node concept="3cpWsn" id="f" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:6281736288926476528" />
            <node concept="3uibUv" id="g" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:6281736288926476528" />
            </node>
            <node concept="2ShNRf" id="h" role="33vP2m">
              <uo k="s:originTrace" v="n:6281736288926476528" />
              <node concept="1pGfFk" id="i" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:6281736288926476528" />
                <node concept="37vLTw" id="j" role="37wK5m">
                  <ref role="3cqZAo" node="7" resolve="ctx" />
                  <uo k="s:originTrace" v="n:6281736288926476528" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288926476587" />
          <node concept="2OqwBi" id="k" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288926476587" />
            <node concept="37vLTw" id="l" role="2Oq$k0">
              <ref role="3cqZAo" node="f" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288926476587" />
            </node>
            <node concept="liA8E" id="m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288926476587" />
              <node concept="Xl_RD" id="n" role="37wK5m">
                <property role="Xl_RC" value="digitalWrite(" />
                <uo k="s:originTrace" v="n:6281736288926476587" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="b" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288926494669" />
          <node concept="2OqwBi" id="o" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288926494669" />
            <node concept="37vLTw" id="p" role="2Oq$k0">
              <ref role="3cqZAo" node="f" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288926494669" />
            </node>
            <node concept="liA8E" id="q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288926494669" />
              <node concept="2YIFZM" id="r" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:6281736288926503886" />
                <node concept="2OqwBi" id="s" role="37wK5m">
                  <uo k="s:originTrace" v="n:6281736288926507702" />
                  <node concept="2OqwBi" id="t" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6281736288926505603" />
                    <node concept="2OqwBi" id="v" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6281736288926504709" />
                      <node concept="37vLTw" id="x" role="2Oq$k0">
                        <ref role="3cqZAo" node="7" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="y" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="w" role="2OqNvi">
                      <ref role="3Tt5mk" to="5893:1YJQPZaOrii" resolve="actuator" />
                      <uo k="s:originTrace" v="n:6281736288926506747" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="u" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    <uo k="s:originTrace" v="n:6281736288927089869" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="c" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288926522894" />
          <node concept="2OqwBi" id="z" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288926522894" />
            <node concept="37vLTw" id="$" role="2Oq$k0">
              <ref role="3cqZAo" node="f" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288926522894" />
            </node>
            <node concept="liA8E" id="_" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288926522894" />
              <node concept="Xl_RD" id="A" role="37wK5m">
                <property role="Xl_RC" value=" ," />
                <uo k="s:originTrace" v="n:6281736288926522894" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="d" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288926530659" />
          <node concept="2OqwBi" id="B" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288926530659" />
            <node concept="37vLTw" id="C" role="2Oq$k0">
              <ref role="3cqZAo" node="f" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288926530659" />
            </node>
            <node concept="liA8E" id="D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288926530659" />
              <node concept="2YIFZM" id="E" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:6281736288926703419" />
                <node concept="2OqwBi" id="F" role="37wK5m">
                  <uo k="s:originTrace" v="n:6281736288927864528" />
                  <node concept="2OqwBi" id="G" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6281736288926704936" />
                    <node concept="2OqwBi" id="I" role="2Oq$k0">
                      <uo k="s:originTrace" v="n:6281736288926703499" />
                      <node concept="37vLTw" id="K" role="2Oq$k0">
                        <ref role="3cqZAo" node="7" resolve="ctx" />
                      </node>
                      <node concept="liA8E" id="L" role="2OqNvi">
                        <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="J" role="2OqNvi">
                      <ref role="3TsBF5" to="5893:1YJQPZaOrie" resolve="status" />
                      <uo k="s:originTrace" v="n:6281736288926710963" />
                    </node>
                  </node>
                  <node concept="24Tkf9" id="H" role="2OqNvi">
                    <uo k="s:originTrace" v="n:6281736288927865484" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="e" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927863425" />
          <node concept="2OqwBi" id="M" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927863425" />
            <node concept="37vLTw" id="N" role="2Oq$k0">
              <ref role="3cqZAo" node="f" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927863425" />
            </node>
            <node concept="liA8E" id="O" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927863425" />
              <node concept="Xl_RD" id="P" role="37wK5m">
                <property role="Xl_RC" value=");" />
                <uo k="s:originTrace" v="n:6281736288927863425" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6281736288926476528" />
        <node concept="3uibUv" id="Q" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:6281736288926476528" />
        </node>
      </node>
      <node concept="2AHcQZ" id="8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6281736288926476528" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="R">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Actuator_TextGen" />
    <uo k="s:originTrace" v="n:3849064725406053369" />
    <node concept="3Tm1VV" id="S" role="1B3o_S">
      <uo k="s:originTrace" v="n:3849064725406053369" />
    </node>
    <node concept="3uibUv" id="T" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3849064725406053369" />
    </node>
    <node concept="3clFb_" id="U" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3849064725406053369" />
      <node concept="3cqZAl" id="V" role="3clF45">
        <uo k="s:originTrace" v="n:3849064725406053369" />
      </node>
      <node concept="3Tm1VV" id="W" role="1B3o_S">
        <uo k="s:originTrace" v="n:3849064725406053369" />
      </node>
      <node concept="3clFbS" id="X" role="3clF47">
        <uo k="s:originTrace" v="n:3849064725406053369" />
        <node concept="3cpWs8" id="10" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406053369" />
          <node concept="3cpWsn" id="18" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3849064725406053369" />
            <node concept="3uibUv" id="19" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3849064725406053369" />
            </node>
            <node concept="2ShNRf" id="1a" role="33vP2m">
              <uo k="s:originTrace" v="n:3849064725406053369" />
              <node concept="1pGfFk" id="1b" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3849064725406053369" />
                <node concept="37vLTw" id="1c" role="37wK5m">
                  <ref role="3cqZAo" node="Y" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3849064725406053369" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11" role="3cqZAp">
          <uo k="s:originTrace" v="n:2366345058067993803" />
          <node concept="2OqwBi" id="1d" role="3clFbG">
            <uo k="s:originTrace" v="n:2366345058067993803" />
            <node concept="37vLTw" id="1e" role="2Oq$k0">
              <ref role="3cqZAo" node="18" resolve="tgs" />
              <uo k="s:originTrace" v="n:2366345058067993803" />
            </node>
            <node concept="liA8E" id="1f" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:2366345058067993803" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406098283" />
          <node concept="2OqwBi" id="1g" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406098283" />
            <node concept="37vLTw" id="1h" role="2Oq$k0">
              <ref role="3cqZAo" node="18" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406098283" />
            </node>
            <node concept="liA8E" id="1i" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406098283" />
              <node concept="Xl_RD" id="1j" role="37wK5m">
                <property role="Xl_RC" value="int " />
                <uo k="s:originTrace" v="n:3849064725406098283" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406063174" />
          <node concept="2OqwBi" id="1k" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406063174" />
            <node concept="37vLTw" id="1l" role="2Oq$k0">
              <ref role="3cqZAo" node="18" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406063174" />
            </node>
            <node concept="liA8E" id="1m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406063174" />
              <node concept="2OqwBi" id="1n" role="37wK5m">
                <uo k="s:originTrace" v="n:3849064725406063700" />
                <node concept="2OqwBi" id="1o" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3849064725406063209" />
                  <node concept="37vLTw" id="1q" role="2Oq$k0">
                    <ref role="3cqZAo" node="Y" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="1r" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="1p" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3849064725406064489" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="14" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406064735" />
          <node concept="2OqwBi" id="1s" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406064735" />
            <node concept="37vLTw" id="1t" role="2Oq$k0">
              <ref role="3cqZAo" node="18" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406064735" />
            </node>
            <node concept="liA8E" id="1u" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406064735" />
              <node concept="Xl_RD" id="1v" role="37wK5m">
                <property role="Xl_RC" value="=" />
                <uo k="s:originTrace" v="n:3849064725406064735" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="15" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406064869" />
          <node concept="2OqwBi" id="1w" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406064869" />
            <node concept="37vLTw" id="1x" role="2Oq$k0">
              <ref role="3cqZAo" node="18" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406064869" />
            </node>
            <node concept="liA8E" id="1y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406064869" />
              <node concept="2YIFZM" id="1z" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:3849064725406065056" />
                <node concept="2OqwBi" id="1$" role="37wK5m">
                  <uo k="s:originTrace" v="n:3849064725406065681" />
                  <node concept="2OqwBi" id="1_" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3849064725406065218" />
                    <node concept="37vLTw" id="1B" role="2Oq$k0">
                      <ref role="3cqZAo" node="Y" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="1C" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="1A" role="2OqNvi">
                    <ref role="3TsBF5" to="5893:3lEBZ_Vjz$L" resolve="pin" />
                    <uo k="s:originTrace" v="n:3849064725406066514" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406083275" />
          <node concept="2OqwBi" id="1D" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406083275" />
            <node concept="37vLTw" id="1E" role="2Oq$k0">
              <ref role="3cqZAo" node="18" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406083275" />
            </node>
            <node concept="liA8E" id="1F" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406083275" />
              <node concept="Xl_RD" id="1G" role="37wK5m">
                <property role="Xl_RC" value=";" />
                <uo k="s:originTrace" v="n:3849064725406083275" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="17" role="3cqZAp">
          <uo k="s:originTrace" v="n:2366345058067865544" />
          <node concept="2OqwBi" id="1H" role="3clFbG">
            <uo k="s:originTrace" v="n:2366345058067865544" />
            <node concept="37vLTw" id="1I" role="2Oq$k0">
              <ref role="3cqZAo" node="18" resolve="tgs" />
              <uo k="s:originTrace" v="n:2366345058067865544" />
            </node>
            <node concept="liA8E" id="1J" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:2366345058067865544" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Y" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3849064725406053369" />
        <node concept="3uibUv" id="1K" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3849064725406053369" />
        </node>
      </node>
      <node concept="2AHcQZ" id="Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3849064725406053369" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1L">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="App_TextGen" />
    <uo k="s:originTrace" v="n:3849064725406021546" />
    <node concept="3Tm1VV" id="1M" role="1B3o_S">
      <uo k="s:originTrace" v="n:3849064725406021546" />
    </node>
    <node concept="3uibUv" id="1N" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3849064725406021546" />
    </node>
    <node concept="3clFb_" id="1O" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3849064725406021546" />
      <node concept="3cqZAl" id="1P" role="3clF45">
        <uo k="s:originTrace" v="n:3849064725406021546" />
      </node>
      <node concept="3Tm1VV" id="1Q" role="1B3o_S">
        <uo k="s:originTrace" v="n:3849064725406021546" />
      </node>
      <node concept="3clFbS" id="1R" role="3clF47">
        <uo k="s:originTrace" v="n:3849064725406021546" />
        <node concept="3cpWs8" id="1U" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406021546" />
          <node concept="3cpWsn" id="2d" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3849064725406021546" />
            <node concept="3uibUv" id="2e" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3849064725406021546" />
            </node>
            <node concept="2ShNRf" id="2f" role="33vP2m">
              <uo k="s:originTrace" v="n:3849064725406021546" />
              <node concept="1pGfFk" id="2g" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3849064725406021546" />
                <node concept="37vLTw" id="2h" role="37wK5m">
                  <ref role="3cqZAo" node="1S" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3849064725406021546" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1V" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406295265" />
          <node concept="2OqwBi" id="2i" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406295265" />
            <node concept="37vLTw" id="2j" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406295265" />
            </node>
            <node concept="liA8E" id="2k" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406295265" />
              <node concept="Xl_RD" id="2l" role="37wK5m">
                <property role="Xl_RC" value="// code generated par moi avec text gen les bogoss" />
                <uo k="s:originTrace" v="n:3849064725406295265" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1W" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406295865" />
          <node concept="2OqwBi" id="2m" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406295865" />
            <node concept="37vLTw" id="2n" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406295865" />
            </node>
            <node concept="liA8E" id="2o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3849064725406295865" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1X" role="3cqZAp">
          <uo k="s:originTrace" v="n:2283284740571091837" />
          <node concept="2OqwBi" id="2p" role="3clFbG">
            <uo k="s:originTrace" v="n:2283284740571091837" />
            <node concept="37vLTw" id="2q" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:2283284740571091837" />
            </node>
            <node concept="liA8E" id="2r" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:2283284740571091837" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:2366345058068177582" />
          <node concept="3clFbS" id="2s" role="2LFqv$">
            <uo k="s:originTrace" v="n:2366345058068177582" />
            <node concept="3clFbF" id="2v" role="3cqZAp">
              <uo k="s:originTrace" v="n:2366345058068177582" />
              <node concept="2OqwBi" id="2w" role="3clFbG">
                <uo k="s:originTrace" v="n:2366345058068177582" />
                <node concept="37vLTw" id="2x" role="2Oq$k0">
                  <ref role="3cqZAo" node="2d" resolve="tgs" />
                  <uo k="s:originTrace" v="n:2366345058068177582" />
                </node>
                <node concept="liA8E" id="2y" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:2366345058068177582" />
                  <node concept="37vLTw" id="2z" role="37wK5m">
                    <ref role="3cqZAo" node="2t" resolve="item" />
                    <uo k="s:originTrace" v="n:2366345058068177582" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2t" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:2366345058068177582" />
            <node concept="3Tqbb2" id="2$" role="1tU5fm">
              <uo k="s:originTrace" v="n:2366345058068177582" />
            </node>
          </node>
          <node concept="2OqwBi" id="2u" role="1DdaDG">
            <uo k="s:originTrace" v="n:2366345058068178022" />
            <node concept="2OqwBi" id="2_" role="2Oq$k0">
              <uo k="s:originTrace" v="n:2366345058068177612" />
              <node concept="37vLTw" id="2B" role="2Oq$k0">
                <ref role="3cqZAo" node="1S" resolve="ctx" />
              </node>
              <node concept="liA8E" id="2C" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="2A" role="2OqNvi">
              <ref role="3TtcxE" to="5893:3lEBZ_Vjz$U" resolve="brick" />
              <uo k="s:originTrace" v="n:2366345058068179236" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406163597" />
          <node concept="2OqwBi" id="2D" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406163597" />
            <node concept="37vLTw" id="2E" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406163597" />
            </node>
            <node concept="liA8E" id="2F" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406163597" />
              <node concept="Xl_RD" id="2G" role="37wK5m">
                <property role="Xl_RC" value="void setup {" />
                <uo k="s:originTrace" v="n:3849064725406163597" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="20" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406295810" />
          <node concept="2OqwBi" id="2H" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406295810" />
            <node concept="37vLTw" id="2I" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406295810" />
            </node>
            <node concept="liA8E" id="2J" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3849064725406295810" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="21" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406164159" />
          <node concept="2OqwBi" id="2K" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406164159" />
            <node concept="2OqwBi" id="2L" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3849064725406164159" />
              <node concept="2OqwBi" id="2N" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3849064725406164159" />
                <node concept="37vLTw" id="2P" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3849064725406164159" />
                </node>
                <node concept="liA8E" id="2Q" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3849064725406164159" />
                </node>
              </node>
              <node concept="liA8E" id="2O" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3849064725406164159" />
              </node>
            </node>
            <node concept="liA8E" id="2M" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:3849064725406164159" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="22" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406164348" />
          <node concept="2OqwBi" id="2R" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406176251" />
            <node concept="2OqwBi" id="2S" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3849064725406164905" />
              <node concept="2OqwBi" id="2U" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3849064725406164347" />
                <node concept="37vLTw" id="2W" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="ctx" />
                </node>
                <node concept="liA8E" id="2X" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                </node>
              </node>
              <node concept="3Tsc0h" id="2V" role="2OqNvi">
                <ref role="3TtcxE" to="5893:3lEBZ_Vjz$U" resolve="brick" />
                <uo k="s:originTrace" v="n:3849064725406166412" />
              </node>
            </node>
            <node concept="2es0OD" id="2T" role="2OqNvi">
              <uo k="s:originTrace" v="n:3849064725406194750" />
              <node concept="1bVj0M" id="2Y" role="23t8la">
                <uo k="s:originTrace" v="n:3849064725406194752" />
                <node concept="3clFbS" id="2Z" role="1bW5cS">
                  <uo k="s:originTrace" v="n:3849064725406194753" />
                  <node concept="3clFbF" id="31" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3849064725406195691" />
                    <node concept="2OqwBi" id="37" role="3clFbG">
                      <uo k="s:originTrace" v="n:3849064725406195691" />
                      <node concept="37vLTw" id="38" role="2Oq$k0">
                        <ref role="3cqZAo" node="2d" resolve="tgs" />
                        <uo k="s:originTrace" v="n:3849064725406195691" />
                      </node>
                      <node concept="liA8E" id="39" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
                        <uo k="s:originTrace" v="n:3849064725406195691" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="32" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3849064725406196324" />
                    <node concept="2OqwBi" id="3a" role="3clFbG">
                      <uo k="s:originTrace" v="n:3849064725406196324" />
                      <node concept="37vLTw" id="3b" role="2Oq$k0">
                        <ref role="3cqZAo" node="2d" resolve="tgs" />
                        <uo k="s:originTrace" v="n:3849064725406196324" />
                      </node>
                      <node concept="liA8E" id="3c" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                        <uo k="s:originTrace" v="n:3849064725406196324" />
                        <node concept="Xl_RD" id="3d" role="37wK5m">
                          <property role="Xl_RC" value="pinMode(" />
                          <uo k="s:originTrace" v="n:3849064725406196324" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="33" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3849064725406196929" />
                    <node concept="2OqwBi" id="3e" role="3clFbG">
                      <uo k="s:originTrace" v="n:3849064725406196929" />
                      <node concept="37vLTw" id="3f" role="2Oq$k0">
                        <ref role="3cqZAo" node="2d" resolve="tgs" />
                        <uo k="s:originTrace" v="n:3849064725406196929" />
                      </node>
                      <node concept="liA8E" id="3g" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                        <uo k="s:originTrace" v="n:3849064725406196929" />
                        <node concept="2OqwBi" id="3h" role="37wK5m">
                          <uo k="s:originTrace" v="n:3849064725406197925" />
                          <node concept="37vLTw" id="3i" role="2Oq$k0">
                            <ref role="3cqZAo" node="30" resolve="it" />
                            <uo k="s:originTrace" v="n:3849064725406197091" />
                          </node>
                          <node concept="3TrcHB" id="3j" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            <uo k="s:originTrace" v="n:3849064725406202766" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="34" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3849064725406203259" />
                    <node concept="2OqwBi" id="3k" role="3clFbG">
                      <uo k="s:originTrace" v="n:3849064725406203259" />
                      <node concept="37vLTw" id="3l" role="2Oq$k0">
                        <ref role="3cqZAo" node="2d" resolve="tgs" />
                        <uo k="s:originTrace" v="n:3849064725406203259" />
                      </node>
                      <node concept="liA8E" id="3m" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                        <uo k="s:originTrace" v="n:3849064725406203259" />
                        <node concept="Xl_RD" id="3n" role="37wK5m">
                          <property role="Xl_RC" value=", " />
                          <uo k="s:originTrace" v="n:3849064725406203259" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="35" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3849064725406203799" />
                    <node concept="2OqwBi" id="3o" role="3clFbG">
                      <uo k="s:originTrace" v="n:3849064725406203799" />
                      <node concept="37vLTw" id="3p" role="2Oq$k0">
                        <ref role="3cqZAo" node="2d" resolve="tgs" />
                        <uo k="s:originTrace" v="n:3849064725406203799" />
                      </node>
                      <node concept="liA8E" id="3q" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
                        <uo k="s:originTrace" v="n:3849064725406203799" />
                        <node concept="Xl_RD" id="3r" role="37wK5m">
                          <property role="Xl_RC" value="OUTPUT);" />
                          <uo k="s:originTrace" v="n:3849064725406203799" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="36" role="3cqZAp">
                    <uo k="s:originTrace" v="n:3849064725406205033" />
                    <node concept="2OqwBi" id="3s" role="3clFbG">
                      <uo k="s:originTrace" v="n:3849064725406205033" />
                      <node concept="37vLTw" id="3t" role="2Oq$k0">
                        <ref role="3cqZAo" node="2d" resolve="tgs" />
                        <uo k="s:originTrace" v="n:3849064725406205033" />
                      </node>
                      <node concept="liA8E" id="3u" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
                        <uo k="s:originTrace" v="n:3849064725406205033" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="30" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <uo k="s:originTrace" v="n:3849064725406194754" />
                  <node concept="2jxLKc" id="3v" role="1tU5fm">
                    <uo k="s:originTrace" v="n:3849064725406194755" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="23" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406164159" />
          <node concept="2OqwBi" id="3w" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406164159" />
            <node concept="2OqwBi" id="3x" role="2Oq$k0">
              <uo k="s:originTrace" v="n:3849064725406164159" />
              <node concept="2OqwBi" id="3z" role="2Oq$k0">
                <uo k="s:originTrace" v="n:3849064725406164159" />
                <node concept="37vLTw" id="3_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3849064725406164159" />
                </node>
                <node concept="liA8E" id="3A" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:3849064725406164159" />
                </node>
              </node>
              <node concept="liA8E" id="3$" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:3849064725406164159" />
              </node>
            </node>
            <node concept="liA8E" id="3y" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:3849064725406164159" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406164250" />
          <node concept="2OqwBi" id="3B" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406164250" />
            <node concept="37vLTw" id="3C" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406164250" />
            </node>
            <node concept="liA8E" id="3D" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406164250" />
              <node concept="Xl_RD" id="3E" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:3849064725406164250" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="25" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406206182" />
          <node concept="2OqwBi" id="3F" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406206182" />
            <node concept="37vLTw" id="3G" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406206182" />
            </node>
            <node concept="liA8E" id="3H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:3849064725406206182" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="26" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927136441" />
          <node concept="2OqwBi" id="3I" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927136441" />
            <node concept="37vLTw" id="3J" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927136441" />
            </node>
            <node concept="liA8E" id="3K" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927136441" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927135594" />
          <node concept="2OqwBi" id="3L" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927135594" />
            <node concept="37vLTw" id="3M" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927135594" />
            </node>
            <node concept="liA8E" id="3N" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927135594" />
              <node concept="Xl_RD" id="3O" role="37wK5m">
                <property role="Xl_RC" value="long time = 0; long debounce = 200;" />
                <uo k="s:originTrace" v="n:6281736288927135594" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="28" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927335372" />
          <node concept="2OqwBi" id="3P" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927335372" />
            <node concept="37vLTw" id="3Q" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927335372" />
            </node>
            <node concept="liA8E" id="3R" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927335372" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="29" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927243816" />
          <node concept="3clFbS" id="3S" role="2LFqv$">
            <uo k="s:originTrace" v="n:6281736288927243816" />
            <node concept="3clFbF" id="3V" role="3cqZAp">
              <uo k="s:originTrace" v="n:6281736288927243816" />
              <node concept="2OqwBi" id="3W" role="3clFbG">
                <uo k="s:originTrace" v="n:6281736288927243816" />
                <node concept="37vLTw" id="3X" role="2Oq$k0">
                  <ref role="3cqZAo" node="2d" resolve="tgs" />
                  <uo k="s:originTrace" v="n:6281736288927243816" />
                </node>
                <node concept="liA8E" id="3Y" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:6281736288927243816" />
                  <node concept="37vLTw" id="3Z" role="37wK5m">
                    <ref role="3cqZAo" node="3T" resolve="item" />
                    <uo k="s:originTrace" v="n:6281736288927243816" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3T" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:6281736288927243816" />
            <node concept="3Tqbb2" id="40" role="1tU5fm">
              <uo k="s:originTrace" v="n:6281736288927243816" />
            </node>
          </node>
          <node concept="2OqwBi" id="3U" role="1DdaDG">
            <uo k="s:originTrace" v="n:6281736288927244256" />
            <node concept="2OqwBi" id="41" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6281736288927243846" />
              <node concept="37vLTw" id="43" role="2Oq$k0">
                <ref role="3cqZAo" node="1S" resolve="ctx" />
              </node>
              <node concept="liA8E" id="44" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="42" role="2OqNvi">
              <ref role="3TtcxE" to="5893:1YJQPZaOriw" resolve="state" />
              <uo k="s:originTrace" v="n:6281736288927245501" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2a" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927136924" />
          <node concept="2OqwBi" id="45" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927136924" />
            <node concept="37vLTw" id="46" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927136924" />
            </node>
            <node concept="liA8E" id="47" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927136924" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2b" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927137956" />
        </node>
        <node concept="3clFbF" id="2c" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927137906" />
          <node concept="2OqwBi" id="48" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927137906" />
            <node concept="37vLTw" id="49" role="2Oq$k0">
              <ref role="3cqZAo" node="2d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927137906" />
            </node>
            <node concept="liA8E" id="4a" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927137906" />
              <node concept="Xl_RD" id="4b" role="37wK5m">
                <property role="Xl_RC" value="void loop() { state_off(); }" />
                <uo k="s:originTrace" v="n:6281736288927137906" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1S" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3849064725406021546" />
        <node concept="3uibUv" id="4c" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3849064725406021546" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3849064725406021546" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="4d">
    <node concept="39e2AJ" id="4e" role="39e2AI">
      <property role="39e3Y2" value="GetEncoding" />
      <node concept="39e2AG" id="4j" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:3lEBZ_VjZuE" resolve="App_TextGen" />
        <node concept="385nmt" id="4k" role="385vvn">
          <property role="385vuF" value="App_TextGen" />
          <node concept="3u3nmq" id="4m" role="385v07">
            <property role="3u3nmv" value="3849064725406021546" />
          </node>
        </node>
        <node concept="39e2AT" id="4l" role="39e2AY">
          <ref role="39e2AS" node="7J" resolve="getEncoding_App" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4f" role="39e2AI">
      <property role="39e3Y2" value="GetExtension" />
      <node concept="39e2AG" id="4n" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:3lEBZ_VjZuE" resolve="App_TextGen" />
        <node concept="385nmt" id="4o" role="385vvn">
          <property role="385vuF" value="App_TextGen" />
          <node concept="3u3nmq" id="4q" role="385v07">
            <property role="3u3nmv" value="3849064725406021546" />
          </node>
        </node>
        <node concept="39e2AT" id="4p" role="39e2AY">
          <ref role="39e2AS" node="7I" resolve="getFileExtension_App" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4g" role="39e2AI">
      <property role="39e3Y2" value="GetFilename" />
      <node concept="39e2AG" id="4r" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:3lEBZ_VjZuE" resolve="App_TextGen" />
        <node concept="385nmt" id="4s" role="385vvn">
          <property role="385vuF" value="App_TextGen" />
          <node concept="3u3nmq" id="4u" role="385v07">
            <property role="3u3nmv" value="3849064725406021546" />
          </node>
        </node>
        <node concept="39e2AT" id="4t" role="39e2AY">
          <ref role="39e2AS" node="7H" resolve="getFileName_App" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4h" role="39e2AI">
      <property role="39e3Y2" value="TextGenClass" />
      <node concept="39e2AG" id="4v" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:5sHdtXE9azK" resolve="Action_TextGen" />
        <node concept="385nmt" id="4_" role="385vvn">
          <property role="385vuF" value="Action_TextGen" />
          <node concept="3u3nmq" id="4B" role="385v07">
            <property role="3u3nmv" value="6281736288926476528" />
          </node>
        </node>
        <node concept="39e2AT" id="4A" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="Action_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="4w" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:3lEBZ_Vk7fT" resolve="Actuator_TextGen" />
        <node concept="385nmt" id="4C" role="385vvn">
          <property role="385vuF" value="Actuator_TextGen" />
          <node concept="3u3nmq" id="4E" role="385v07">
            <property role="3u3nmv" value="3849064725406053369" />
          </node>
        </node>
        <node concept="39e2AT" id="4D" role="39e2AY">
          <ref role="39e2AS" node="R" resolve="Actuator_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="4x" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:3lEBZ_VjZuE" resolve="App_TextGen" />
        <node concept="385nmt" id="4F" role="385vvn">
          <property role="385vuF" value="App_TextGen" />
          <node concept="3u3nmq" id="4H" role="385v07">
            <property role="3u3nmv" value="3849064725406021546" />
          </node>
        </node>
        <node concept="39e2AT" id="4G" role="39e2AY">
          <ref role="39e2AS" node="1L" resolve="App_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="4y" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:3lEBZ_Vke_y" resolve="Sensor_TextGen" />
        <node concept="385nmt" id="4I" role="385vvn">
          <property role="385vuF" value="Sensor_TextGen" />
          <node concept="3u3nmq" id="4K" role="385v07">
            <property role="3u3nmv" value="3849064725406083426" />
          </node>
        </node>
        <node concept="39e2AT" id="4J" role="39e2AY">
          <ref role="39e2AS" node="4T" resolve="Sensor_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="4z" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:5sHdtXEbG6a" resolve="State_TextGen" />
        <node concept="385nmt" id="4L" role="385vvn">
          <property role="385vuF" value="State_TextGen" />
          <node concept="3u3nmq" id="4N" role="385v07">
            <property role="3u3nmv" value="6281736288927138186" />
          </node>
        </node>
        <node concept="39e2AT" id="4M" role="39e2AY">
          <ref role="39e2AS" node="5N" resolve="State_TextGen" />
        </node>
      </node>
      <node concept="39e2AG" id="4$" role="39e3Y0">
        <ref role="39e2AK" to="3e2j:5sHdtXEbnGo" resolve="Transition_TextGen" />
        <node concept="385nmt" id="4O" role="385vvn">
          <property role="385vuF" value="Transition_TextGen" />
          <node concept="3u3nmq" id="4Q" role="385v07">
            <property role="3u3nmv" value="6281736288927054616" />
          </node>
        </node>
        <node concept="39e2AT" id="4P" role="39e2AY">
          <ref role="39e2AS" node="9P" resolve="Transition_TextGen" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="4i" role="39e2AI">
      <property role="39e3Y2" value="TextGenAspectDescriptorCons" />
      <node concept="39e2AG" id="4R" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="4S" role="39e2AY">
          <ref role="39e2AS" node="7A" resolve="TextGenAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4T">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Sensor_TextGen" />
    <uo k="s:originTrace" v="n:3849064725406083426" />
    <node concept="3Tm1VV" id="4U" role="1B3o_S">
      <uo k="s:originTrace" v="n:3849064725406083426" />
    </node>
    <node concept="3uibUv" id="4V" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:3849064725406083426" />
    </node>
    <node concept="3clFb_" id="4W" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:3849064725406083426" />
      <node concept="3cqZAl" id="4X" role="3clF45">
        <uo k="s:originTrace" v="n:3849064725406083426" />
      </node>
      <node concept="3Tm1VV" id="4Y" role="1B3o_S">
        <uo k="s:originTrace" v="n:3849064725406083426" />
      </node>
      <node concept="3clFbS" id="4Z" role="3clF47">
        <uo k="s:originTrace" v="n:3849064725406083426" />
        <node concept="3cpWs8" id="52" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406083426" />
          <node concept="3cpWsn" id="5a" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:3849064725406083426" />
            <node concept="3uibUv" id="5b" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:3849064725406083426" />
            </node>
            <node concept="2ShNRf" id="5c" role="33vP2m">
              <uo k="s:originTrace" v="n:3849064725406083426" />
              <node concept="1pGfFk" id="5d" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:3849064725406083426" />
                <node concept="37vLTw" id="5e" role="37wK5m">
                  <ref role="3cqZAo" node="50" resolve="ctx" />
                  <uo k="s:originTrace" v="n:3849064725406083426" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="53" role="3cqZAp">
          <uo k="s:originTrace" v="n:2366345058067979555" />
          <node concept="2OqwBi" id="5f" role="3clFbG">
            <uo k="s:originTrace" v="n:2366345058067979555" />
            <node concept="37vLTw" id="5g" role="2Oq$k0">
              <ref role="3cqZAo" node="5a" resolve="tgs" />
              <uo k="s:originTrace" v="n:2366345058067979555" />
            </node>
            <node concept="liA8E" id="5h" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:2366345058067979555" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="54" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406091007" />
          <node concept="2OqwBi" id="5i" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406091007" />
            <node concept="37vLTw" id="5j" role="2Oq$k0">
              <ref role="3cqZAo" node="5a" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406091007" />
            </node>
            <node concept="liA8E" id="5k" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406091007" />
              <node concept="Xl_RD" id="5l" role="37wK5m">
                <property role="Xl_RC" value="int " />
                <uo k="s:originTrace" v="n:3849064725406091007" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="55" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406083491" />
          <node concept="2OqwBi" id="5m" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406083491" />
            <node concept="37vLTw" id="5n" role="2Oq$k0">
              <ref role="3cqZAo" node="5a" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406083491" />
            </node>
            <node concept="liA8E" id="5o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406083491" />
              <node concept="2OqwBi" id="5p" role="37wK5m">
                <uo k="s:originTrace" v="n:3849064725406084166" />
                <node concept="2OqwBi" id="5q" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:3849064725406083526" />
                  <node concept="37vLTw" id="5s" role="2Oq$k0">
                    <ref role="3cqZAo" node="50" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="5t" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="5r" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:3849064725406085541" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406098659" />
          <node concept="2OqwBi" id="5u" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406098659" />
            <node concept="37vLTw" id="5v" role="2Oq$k0">
              <ref role="3cqZAo" node="5a" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406098659" />
            </node>
            <node concept="liA8E" id="5w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406098659" />
              <node concept="Xl_RD" id="5x" role="37wK5m">
                <property role="Xl_RC" value="=" />
                <uo k="s:originTrace" v="n:3849064725406098659" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406098799" />
          <node concept="2OqwBi" id="5y" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406098799" />
            <node concept="37vLTw" id="5z" role="2Oq$k0">
              <ref role="3cqZAo" node="5a" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406098799" />
            </node>
            <node concept="liA8E" id="5$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406098799" />
              <node concept="2YIFZM" id="5_" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:3849064725406099124" />
                <node concept="2OqwBi" id="5A" role="37wK5m">
                  <uo k="s:originTrace" v="n:3849064725406100327" />
                  <node concept="2OqwBi" id="5B" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:3849064725406099285" />
                    <node concept="37vLTw" id="5D" role="2Oq$k0">
                      <ref role="3cqZAo" node="50" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="5E" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5C" role="2OqNvi">
                    <ref role="3TsBF5" to="5893:3lEBZ_Vjz$L" resolve="pin" />
                    <uo k="s:originTrace" v="n:3849064725406101131" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406122879" />
          <node concept="2OqwBi" id="5F" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406122879" />
            <node concept="37vLTw" id="5G" role="2Oq$k0">
              <ref role="3cqZAo" node="5a" resolve="tgs" />
              <uo k="s:originTrace" v="n:3849064725406122879" />
            </node>
            <node concept="liA8E" id="5H" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:3849064725406122879" />
              <node concept="Xl_RD" id="5I" role="37wK5m">
                <property role="Xl_RC" value=";" />
                <uo k="s:originTrace" v="n:3849064725406122879" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="59" role="3cqZAp">
          <uo k="s:originTrace" v="n:2366345058067924144" />
          <node concept="2OqwBi" id="5J" role="3clFbG">
            <uo k="s:originTrace" v="n:2366345058067924144" />
            <node concept="37vLTw" id="5K" role="2Oq$k0">
              <ref role="3cqZAo" node="5a" resolve="tgs" />
              <uo k="s:originTrace" v="n:2366345058067924144" />
            </node>
            <node concept="liA8E" id="5L" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:2366345058067924144" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="50" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:3849064725406083426" />
        <node concept="3uibUv" id="5M" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:3849064725406083426" />
        </node>
      </node>
      <node concept="2AHcQZ" id="51" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:3849064725406083426" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5N">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="State_TextGen" />
    <uo k="s:originTrace" v="n:6281736288927138186" />
    <node concept="3Tm1VV" id="5O" role="1B3o_S">
      <uo k="s:originTrace" v="n:6281736288927138186" />
    </node>
    <node concept="3uibUv" id="5P" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:6281736288927138186" />
    </node>
    <node concept="3clFb_" id="5Q" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:6281736288927138186" />
      <node concept="3cqZAl" id="5R" role="3clF45">
        <uo k="s:originTrace" v="n:6281736288927138186" />
      </node>
      <node concept="3Tm1VV" id="5S" role="1B3o_S">
        <uo k="s:originTrace" v="n:6281736288927138186" />
      </node>
      <node concept="3clFbS" id="5T" role="3clF47">
        <uo k="s:originTrace" v="n:6281736288927138186" />
        <node concept="3cpWs8" id="5W" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927138186" />
          <node concept="3cpWsn" id="6d" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:6281736288927138186" />
            <node concept="3uibUv" id="6e" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:6281736288927138186" />
            </node>
            <node concept="2ShNRf" id="6f" role="33vP2m">
              <uo k="s:originTrace" v="n:6281736288927138186" />
              <node concept="1pGfFk" id="6g" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:6281736288927138186" />
                <node concept="37vLTw" id="6h" role="37wK5m">
                  <ref role="3cqZAo" node="5U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:6281736288927138186" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927138245" />
          <node concept="2OqwBi" id="6i" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927138245" />
            <node concept="37vLTw" id="6j" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927138245" />
            </node>
            <node concept="liA8E" id="6k" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927138245" />
              <node concept="Xl_RD" id="6l" role="37wK5m">
                <property role="Xl_RC" value="void state_" />
                <uo k="s:originTrace" v="n:6281736288927138245" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927138348" />
          <node concept="2OqwBi" id="6m" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927138348" />
            <node concept="37vLTw" id="6n" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927138348" />
            </node>
            <node concept="liA8E" id="6o" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927138348" />
              <node concept="2OqwBi" id="6p" role="37wK5m">
                <uo k="s:originTrace" v="n:6281736288927138826" />
                <node concept="2OqwBi" id="6q" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6281736288927138385" />
                  <node concept="37vLTw" id="6s" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="6t" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrcHB" id="6r" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:6281736288927140525" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927151311" />
          <node concept="2OqwBi" id="6u" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927151311" />
            <node concept="37vLTw" id="6v" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927151311" />
            </node>
            <node concept="liA8E" id="6w" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927151311" />
              <node concept="Xl_RD" id="6x" role="37wK5m">
                <property role="Xl_RC" value="() {" />
                <uo k="s:originTrace" v="n:6281736288927151311" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="60" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927335647" />
          <node concept="2OqwBi" id="6y" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927335647" />
            <node concept="37vLTw" id="6z" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927335647" />
            </node>
            <node concept="liA8E" id="6$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927335647" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927676701" />
          <node concept="2OqwBi" id="6_" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927676701" />
            <node concept="2OqwBi" id="6A" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6281736288927676701" />
              <node concept="2OqwBi" id="6C" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6281736288927676701" />
                <node concept="37vLTw" id="6E" role="2Oq$k0">
                  <ref role="3cqZAo" node="5U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:6281736288927676701" />
                </node>
                <node concept="liA8E" id="6F" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:6281736288927676701" />
                </node>
              </node>
              <node concept="liA8E" id="6D" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:6281736288927676701" />
              </node>
            </node>
            <node concept="liA8E" id="6B" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.increaseIndent()" resolve="increaseIndent" />
              <uo k="s:originTrace" v="n:6281736288927676701" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928050876" />
          <node concept="2OqwBi" id="6G" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928050876" />
            <node concept="37vLTw" id="6H" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928050876" />
            </node>
            <node concept="liA8E" id="6I" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288928050876" />
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="63" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927773579" />
          <node concept="3clFbS" id="6J" role="2LFqv$">
            <uo k="s:originTrace" v="n:6281736288927773579" />
            <node concept="3clFbF" id="6M" role="3cqZAp">
              <uo k="s:originTrace" v="n:6281736288927773579" />
              <node concept="2OqwBi" id="6N" role="3clFbG">
                <uo k="s:originTrace" v="n:6281736288927773579" />
                <node concept="37vLTw" id="6O" role="2Oq$k0">
                  <ref role="3cqZAo" node="6d" resolve="tgs" />
                  <uo k="s:originTrace" v="n:6281736288927773579" />
                </node>
                <node concept="liA8E" id="6P" role="2OqNvi">
                  <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
                  <uo k="s:originTrace" v="n:6281736288927773579" />
                  <node concept="37vLTw" id="6Q" role="37wK5m">
                    <ref role="3cqZAo" node="6K" resolve="item" />
                    <uo k="s:originTrace" v="n:6281736288927773579" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6K" role="1Duv9x">
            <property role="TrG5h" value="item" />
            <uo k="s:originTrace" v="n:6281736288927773579" />
            <node concept="3Tqbb2" id="6R" role="1tU5fm">
              <uo k="s:originTrace" v="n:6281736288927773579" />
            </node>
          </node>
          <node concept="2OqwBi" id="6L" role="1DdaDG">
            <uo k="s:originTrace" v="n:6281736288927774019" />
            <node concept="2OqwBi" id="6S" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6281736288927773609" />
              <node concept="37vLTw" id="6U" role="2Oq$k0">
                <ref role="3cqZAo" node="5U" resolve="ctx" />
              </node>
              <node concept="liA8E" id="6V" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
              </node>
            </node>
            <node concept="3Tsc0h" id="6T" role="2OqNvi">
              <ref role="3TtcxE" to="5893:1YJQPZaOrim" resolve="actions" />
              <uo k="s:originTrace" v="n:6281736288927775381" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="64" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927775580" />
          <node concept="2OqwBi" id="6W" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927775580" />
            <node concept="37vLTw" id="6X" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927775580" />
            </node>
            <node concept="liA8E" id="6Y" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927775580" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928051025" />
          <node concept="2OqwBi" id="6Z" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928051025" />
            <node concept="37vLTw" id="70" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928051025" />
            </node>
            <node concept="liA8E" id="71" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288928051025" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="66" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927770979" />
          <node concept="2OqwBi" id="72" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927770979" />
            <node concept="37vLTw" id="73" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927770979" />
            </node>
            <node concept="liA8E" id="74" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927770979" />
              <node concept="Xl_RD" id="75" role="37wK5m">
                <property role="Xl_RC" value="boolean guard =  millis() - time &gt; debounce;" />
                <uo k="s:originTrace" v="n:6281736288927770979" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="67" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927775798" />
          <node concept="2OqwBi" id="76" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927775798" />
            <node concept="37vLTw" id="77" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927775798" />
            </node>
            <node concept="liA8E" id="78" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927775798" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="68" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928051176" />
          <node concept="2OqwBi" id="79" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928051176" />
            <node concept="37vLTw" id="7a" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928051176" />
            </node>
            <node concept="liA8E" id="7b" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288928051176" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="69" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927775913" />
          <node concept="2OqwBi" id="7c" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927775913" />
            <node concept="37vLTw" id="7d" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927775913" />
            </node>
            <node concept="liA8E" id="7e" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.appendNode(org.jetbrains.mps.openapi.model.SNode)" resolve="appendNode" />
              <uo k="s:originTrace" v="n:6281736288927775913" />
              <node concept="2OqwBi" id="7f" role="37wK5m">
                <uo k="s:originTrace" v="n:6281736288927776127" />
                <node concept="2OqwBi" id="7g" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6281736288927775948" />
                  <node concept="37vLTw" id="7i" role="2Oq$k0">
                    <ref role="3cqZAo" node="5U" resolve="ctx" />
                  </node>
                  <node concept="liA8E" id="7j" role="2OqNvi">
                    <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                  </node>
                </node>
                <node concept="3TrEf2" id="7h" role="2OqNvi">
                  <ref role="3Tt5mk" to="5893:1YJQPZaOrip" resolve="transition" />
                  <uo k="s:originTrace" v="n:6281736288927776359" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6a" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927776704" />
          <node concept="2OqwBi" id="7k" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927776704" />
            <node concept="37vLTw" id="7l" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927776704" />
            </node>
            <node concept="liA8E" id="7m" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927776704" />
              <node concept="Xl_RD" id="7n" role="37wK5m">
                <property role="Xl_RC" value="}" />
                <uo k="s:originTrace" v="n:6281736288927776704" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6b" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927776780" />
          <node concept="2OqwBi" id="7o" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927776780" />
            <node concept="37vLTw" id="7p" role="2Oq$k0">
              <ref role="3cqZAo" node="6d" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927776780" />
            </node>
            <node concept="liA8E" id="7q" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927776780" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6c" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927676701" />
          <node concept="2OqwBi" id="7r" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927676701" />
            <node concept="2OqwBi" id="7s" role="2Oq$k0">
              <uo k="s:originTrace" v="n:6281736288927676701" />
              <node concept="2OqwBi" id="7u" role="2Oq$k0">
                <uo k="s:originTrace" v="n:6281736288927676701" />
                <node concept="37vLTw" id="7w" role="2Oq$k0">
                  <ref role="3cqZAo" node="5U" resolve="ctx" />
                  <uo k="s:originTrace" v="n:6281736288927676701" />
                </node>
                <node concept="liA8E" id="7x" role="2OqNvi">
                  <ref role="37wK5l" to="yfwt:~TextGenContext.getBuffer()" resolve="getBuffer" />
                  <uo k="s:originTrace" v="n:6281736288927676701" />
                </node>
              </node>
              <node concept="liA8E" id="7v" role="2OqNvi">
                <ref role="37wK5l" to="ao3:~TextBuffer.area()" resolve="area" />
                <uo k="s:originTrace" v="n:6281736288927676701" />
              </node>
            </node>
            <node concept="liA8E" id="7t" role="2OqNvi">
              <ref role="37wK5l" to="ao3:~TextArea.decreaseIndent()" resolve="decreaseIndent" />
              <uo k="s:originTrace" v="n:6281736288927676701" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5U" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6281736288927138186" />
        <node concept="3uibUv" id="7y" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:6281736288927138186" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6281736288927138186" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7z">
    <property role="TrG5h" value="TextGenAspectDescriptor" />
    <node concept="312cEg" id="7$" role="jymVt">
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7K" role="1B3o_S" />
      <node concept="2eloPW" id="7L" role="1tU5fm">
        <property role="2ely0U" value="ArduinoML.structure.LanguageConceptSwitch" />
        <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
      </node>
      <node concept="2ShNRf" id="7M" role="33vP2m">
        <node concept="xCZzO" id="7N" role="2ShVmc">
          <property role="xCZzQ" value="ArduinoML.structure.LanguageConceptSwitch" />
          <node concept="3uibUv" id="7O" role="xCZzL">
            <ref role="3uigEE" to="tpcf:1OW7rNmnulT" resolve="LanguageConceptSwitch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_" role="jymVt" />
    <node concept="3clFbW" id="7A" role="jymVt">
      <node concept="3cqZAl" id="7P" role="3clF45" />
      <node concept="3clFbS" id="7Q" role="3clF47" />
      <node concept="3Tm1VV" id="7R" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7B" role="jymVt" />
    <node concept="3Tm1VV" id="7C" role="1B3o_S" />
    <node concept="3uibUv" id="7D" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenAspectBase" resolve="TextGenAspectBase" />
    </node>
    <node concept="3clFb_" id="7E" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="7S" role="1B3o_S" />
      <node concept="3uibUv" id="7T" role="3clF45">
        <ref role="3uigEE" to="yfwt:~TextGenDescriptor" resolve="TextGenDescriptor" />
      </node>
      <node concept="37vLTG" id="7U" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="7Y" role="1tU5fm" />
        <node concept="2AHcQZ" id="7Z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7V" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="7W" role="3clF47">
        <node concept="3KaCP$" id="80" role="3cqZAp">
          <node concept="2OqwBi" id="82" role="3KbGdf">
            <node concept="37vLTw" id="89" role="2Oq$k0">
              <ref role="3cqZAo" node="7$" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="8a" role="2OqNvi">
              <ref role="37wK5l" to="tpcf:1OW7rNmnuDr" resolve="index" />
              <node concept="37vLTw" id="8b" role="37wK5m">
                <ref role="3cqZAo" node="7U" resolve="concept" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="83" role="3KbHQx">
            <node concept="1n$iZg" id="8c" role="3Kbmr1">
              <property role="1n_iUB" value="Action" />
              <property role="1n_ezw" value="ArduinoML.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="8d" role="3Kbo56">
              <node concept="3cpWs6" id="8e" role="3cqZAp">
                <node concept="2ShNRf" id="8f" role="3cqZAk">
                  <node concept="HV5vD" id="8g" role="2ShVmc">
                    <ref role="HV5vE" node="0" resolve="Action_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="84" role="3KbHQx">
            <node concept="1n$iZg" id="8h" role="3Kbmr1">
              <property role="1n_iUB" value="Actuator" />
              <property role="1n_ezw" value="ArduinoML.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="8i" role="3Kbo56">
              <node concept="3cpWs6" id="8j" role="3cqZAp">
                <node concept="2ShNRf" id="8k" role="3cqZAk">
                  <node concept="HV5vD" id="8l" role="2ShVmc">
                    <ref role="HV5vE" node="R" resolve="Actuator_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="85" role="3KbHQx">
            <node concept="1n$iZg" id="8m" role="3Kbmr1">
              <property role="1n_iUB" value="App" />
              <property role="1n_ezw" value="ArduinoML.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="8n" role="3Kbo56">
              <node concept="3cpWs6" id="8o" role="3cqZAp">
                <node concept="2ShNRf" id="8p" role="3cqZAk">
                  <node concept="HV5vD" id="8q" role="2ShVmc">
                    <ref role="HV5vE" node="1L" resolve="App_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="86" role="3KbHQx">
            <node concept="1n$iZg" id="8r" role="3Kbmr1">
              <property role="1n_iUB" value="Sensor" />
              <property role="1n_ezw" value="ArduinoML.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="8s" role="3Kbo56">
              <node concept="3cpWs6" id="8t" role="3cqZAp">
                <node concept="2ShNRf" id="8u" role="3cqZAk">
                  <node concept="HV5vD" id="8v" role="2ShVmc">
                    <ref role="HV5vE" node="4T" resolve="Sensor_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="87" role="3KbHQx">
            <node concept="1n$iZg" id="8w" role="3Kbmr1">
              <property role="1n_iUB" value="State" />
              <property role="1n_ezw" value="ArduinoML.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="8x" role="3Kbo56">
              <node concept="3cpWs6" id="8y" role="3cqZAp">
                <node concept="2ShNRf" id="8z" role="3cqZAk">
                  <node concept="HV5vD" id="8$" role="2ShVmc">
                    <ref role="HV5vE" node="5N" resolve="State_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="88" role="3KbHQx">
            <node concept="1n$iZg" id="8_" role="3Kbmr1">
              <property role="1n_iUB" value="Transition" />
              <property role="1n_ezw" value="ArduinoML.structure.LanguageConceptSwitch" />
            </node>
            <node concept="3clFbS" id="8A" role="3Kbo56">
              <node concept="3cpWs6" id="8B" role="3cqZAp">
                <node concept="2ShNRf" id="8C" role="3cqZAk">
                  <node concept="HV5vD" id="8D" role="2ShVmc">
                    <ref role="HV5vE" node="9P" resolve="Transition_TextGen" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="81" role="3cqZAp">
          <node concept="10Nm6u" id="8E" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7F" role="jymVt" />
    <node concept="3clFb_" id="7G" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="breakdownToUnits" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="8F" role="1B3o_S" />
      <node concept="3cqZAl" id="8G" role="3clF45" />
      <node concept="37vLTG" id="8H" role="3clF46">
        <property role="TrG5h" value="outline" />
        <node concept="3uibUv" id="8K" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenModelOutline" resolve="TextGenModelOutline" />
        </node>
        <node concept="2AHcQZ" id="8L" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="8I" role="3clF47">
        <node concept="1DcWWT" id="8M" role="3cqZAp">
          <node concept="3clFbS" id="8N" role="2LFqv$">
            <node concept="3clFbJ" id="8Q" role="3cqZAp">
              <node concept="3clFbS" id="8R" role="3clFbx">
                <node concept="3cpWs8" id="8T" role="3cqZAp">
                  <node concept="3cpWsn" id="8X" role="3cpWs9">
                    <property role="TrG5h" value="fname" />
                    <node concept="3uibUv" id="8Y" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="8Z" role="33vP2m">
                      <ref role="37wK5l" node="7H" resolve="getFileName_App" />
                      <node concept="37vLTw" id="90" role="37wK5m">
                        <ref role="3cqZAo" node="8O" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="8U" role="3cqZAp">
                  <node concept="3cpWsn" id="91" role="3cpWs9">
                    <property role="TrG5h" value="ext" />
                    <node concept="3uibUv" id="92" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="1rXfSq" id="93" role="33vP2m">
                      <ref role="37wK5l" node="7I" resolve="getFileExtension_App" />
                      <node concept="37vLTw" id="94" role="37wK5m">
                        <ref role="3cqZAo" node="8O" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="8V" role="3cqZAp">
                  <node concept="2OqwBi" id="95" role="3clFbG">
                    <node concept="37vLTw" id="96" role="2Oq$k0">
                      <ref role="3cqZAo" node="8H" resolve="outline" />
                    </node>
                    <node concept="liA8E" id="97" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenModelOutline.registerTextUnit(java.lang.String,java.lang.String,java.nio.charset.Charset,org.jetbrains.mps.openapi.model.SNode...)" resolve="registerTextUnit" />
                      <node concept="3K4zz7" id="98" role="37wK5m">
                        <node concept="1eOMI4" id="9b" role="3K4GZi">
                          <node concept="3cpWs3" id="9e" role="1eOMHV">
                            <node concept="37vLTw" id="9f" role="3uHU7w">
                              <ref role="3cqZAo" node="91" resolve="ext" />
                            </node>
                            <node concept="3cpWs3" id="9g" role="3uHU7B">
                              <node concept="37vLTw" id="9h" role="3uHU7B">
                                <ref role="3cqZAo" node="8X" resolve="fname" />
                              </node>
                              <node concept="1Xhbcc" id="9i" role="3uHU7w">
                                <property role="1XhdNS" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="9c" role="3K4E3e">
                          <ref role="3cqZAo" node="8X" resolve="fname" />
                        </node>
                        <node concept="3clFbC" id="9d" role="3K4Cdx">
                          <node concept="10Nm6u" id="9j" role="3uHU7w" />
                          <node concept="37vLTw" id="9k" role="3uHU7B">
                            <ref role="3cqZAo" node="91" resolve="ext" />
                          </node>
                        </node>
                      </node>
                      <node concept="2YIFZM" id="99" role="37wK5m">
                        <ref role="37wK5l" to="7x5y:~Charset.forName(java.lang.String)" resolve="forName" />
                        <ref role="1Pybhc" to="7x5y:~Charset" resolve="Charset" />
                        <node concept="1rXfSq" id="9l" role="37wK5m">
                          <ref role="37wK5l" node="7J" resolve="getEncoding_App" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="9a" role="37wK5m">
                        <ref role="3cqZAo" node="8O" resolve="root" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="8W" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="8S" role="3clFbw">
                <node concept="2OqwBi" id="9m" role="2Oq$k0">
                  <node concept="37vLTw" id="9o" role="2Oq$k0">
                    <ref role="3cqZAo" node="8O" resolve="root" />
                  </node>
                  <node concept="liA8E" id="9p" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="9n" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="35c_gC" id="9q" role="37wK5m">
                    <ref role="35c_gD" to="5893:3lEBZ_Vjz$R" resolve="App" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="8O" role="1Duv9x">
            <property role="TrG5h" value="root" />
            <node concept="3uibUv" id="9r" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="8P" role="1DdaDG">
            <node concept="2OqwBi" id="9s" role="2Oq$k0">
              <node concept="37vLTw" id="9u" role="2Oq$k0">
                <ref role="3cqZAo" node="8H" resolve="outline" />
              </node>
              <node concept="liA8E" id="9v" role="2OqNvi">
                <ref role="37wK5l" to="yfwt:~TextGenModelOutline.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="9t" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="8J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="7H" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileName_App" />
      <node concept="3clFbS" id="9w" role="3clF47">
        <node concept="3clFbF" id="9$" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406033224" />
          <node concept="2OqwBi" id="9_" role="3clFbG">
            <uo k="s:originTrace" v="n:3849064725406044172" />
            <node concept="37vLTw" id="9A" role="2Oq$k0">
              <ref role="3cqZAo" node="9z" resolve="node" />
              <uo k="s:originTrace" v="n:3849064725406043993" />
            </node>
            <node concept="3TrcHB" id="9B" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              <uo k="s:originTrace" v="n:3849064725406044554" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="9x" role="1B3o_S" />
      <node concept="3uibUv" id="9y" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="9z" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="9C" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7I" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFileExtension_App" />
      <node concept="3clFbS" id="9D" role="3clF47">
        <node concept="3clFbF" id="9H" role="3cqZAp">
          <uo k="s:originTrace" v="n:3849064725406027681" />
          <node concept="Xl_RD" id="9I" role="3clFbG">
            <property role="Xl_RC" value="ino" />
            <uo k="s:originTrace" v="n:3849064725406027680" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="9E" role="1B3o_S" />
      <node concept="3uibUv" id="9F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="9G" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="9J" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="7J" role="jymVt">
      <property role="TrG5h" value="getEncoding_App" />
      <node concept="3uibUv" id="9K" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3Tm6S6" id="9L" role="1B3o_S" />
      <node concept="3clFbS" id="9M" role="3clF47">
        <node concept="3cpWs6" id="9N" role="3cqZAp">
          <node concept="Xl_RD" id="9O" role="3cqZAk">
            <property role="Xl_RC" value="UTF-8" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9P">
    <property role="1sVAO0" value="false" />
    <property role="TrG5h" value="Transition_TextGen" />
    <uo k="s:originTrace" v="n:6281736288927054616" />
    <node concept="3Tm1VV" id="9Q" role="1B3o_S">
      <uo k="s:originTrace" v="n:6281736288927054616" />
    </node>
    <node concept="3uibUv" id="9R" role="1zkMxy">
      <ref role="3uigEE" to="yfwt:~TextGenDescriptorBase" resolve="TextGenDescriptorBase" />
      <uo k="s:originTrace" v="n:6281736288927054616" />
    </node>
    <node concept="3clFb_" id="9S" role="jymVt">
      <property role="TrG5h" value="generateText" />
      <uo k="s:originTrace" v="n:6281736288927054616" />
      <node concept="3cqZAl" id="9T" role="3clF45">
        <uo k="s:originTrace" v="n:6281736288927054616" />
      </node>
      <node concept="3Tm1VV" id="9U" role="1B3o_S">
        <uo k="s:originTrace" v="n:6281736288927054616" />
      </node>
      <node concept="3clFbS" id="9V" role="3clF47">
        <uo k="s:originTrace" v="n:6281736288927054616" />
        <node concept="3cpWs8" id="9Y" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927054616" />
          <node concept="3cpWsn" id="ak" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="tgs" />
            <uo k="s:originTrace" v="n:6281736288927054616" />
            <node concept="3uibUv" id="al" role="1tU5fm">
              <ref role="3uigEE" to="kpbf:~TextGenSupport" resolve="TextGenSupport" />
              <uo k="s:originTrace" v="n:6281736288927054616" />
            </node>
            <node concept="2ShNRf" id="am" role="33vP2m">
              <uo k="s:originTrace" v="n:6281736288927054616" />
              <node concept="1pGfFk" id="an" role="2ShVmc">
                <ref role="37wK5l" to="kpbf:~TextGenSupport.&lt;init&gt;(jetbrains.mps.text.rt.TextGenContext)" resolve="TextGenSupport" />
                <uo k="s:originTrace" v="n:6281736288927054616" />
                <node concept="37vLTw" id="ao" role="37wK5m">
                  <ref role="3cqZAo" node="9W" resolve="ctx" />
                  <uo k="s:originTrace" v="n:6281736288927054616" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="9Z" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927054675" />
          <node concept="2OqwBi" id="ap" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927054675" />
            <node concept="37vLTw" id="aq" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927054675" />
            </node>
            <node concept="liA8E" id="ar" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927054675" />
              <node concept="Xl_RD" id="as" role="37wK5m">
                <property role="Xl_RC" value="if (digitalRead(" />
                <uo k="s:originTrace" v="n:6281736288927054675" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a0" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927062795" />
          <node concept="2OqwBi" id="at" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927062795" />
            <node concept="37vLTw" id="au" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927062795" />
            </node>
            <node concept="liA8E" id="av" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927062795" />
              <node concept="2OqwBi" id="aw" role="37wK5m">
                <uo k="s:originTrace" v="n:6281736288927073930" />
                <node concept="2OqwBi" id="ax" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6281736288927063369" />
                  <node concept="2OqwBi" id="az" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6281736288927062831" />
                    <node concept="37vLTw" id="a_" role="2Oq$k0">
                      <ref role="3cqZAo" node="9W" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="aA" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="a$" role="2OqNvi">
                    <ref role="3Tt5mk" to="5893:1YJQPZaOri1" resolve="sensor" />
                    <uo k="s:originTrace" v="n:6281736288927073145" />
                  </node>
                </node>
                <node concept="3TrcHB" id="ay" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:6281736288927080825" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a1" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927095264" />
          <node concept="2OqwBi" id="aB" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927095264" />
            <node concept="37vLTw" id="aC" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927095264" />
            </node>
            <node concept="liA8E" id="aD" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927095264" />
              <node concept="Xl_RD" id="aE" role="37wK5m">
                <property role="Xl_RC" value=") == " />
                <uo k="s:originTrace" v="n:6281736288927095264" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a2" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927095689" />
          <node concept="2OqwBi" id="aF" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927095689" />
            <node concept="37vLTw" id="aG" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927095689" />
            </node>
            <node concept="liA8E" id="aH" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927095689" />
              <node concept="2YIFZM" id="aI" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:6281736288927095899" />
                <node concept="2OqwBi" id="aJ" role="37wK5m">
                  <uo k="s:originTrace" v="n:6281736288927097617" />
                  <node concept="2OqwBi" id="aK" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6281736288927096723" />
                    <node concept="37vLTw" id="aM" role="2Oq$k0">
                      <ref role="3cqZAo" node="9W" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="aN" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="aL" role="2OqNvi">
                    <ref role="3TsBF5" to="5893:1YJQPZaOrhY" resolve="status" />
                    <uo k="s:originTrace" v="n:6281736288927098650" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a3" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927100389" />
          <node concept="2OqwBi" id="aO" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927100389" />
            <node concept="37vLTw" id="aP" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927100389" />
            </node>
            <node concept="liA8E" id="aQ" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927100389" />
              <node concept="Xl_RD" id="aR" role="37wK5m">
                <property role="Xl_RC" value=" &amp;&amp; guard ) {" />
                <uo k="s:originTrace" v="n:6281736288927100389" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a4" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927104544" />
          <node concept="2OqwBi" id="aS" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927104544" />
            <node concept="37vLTw" id="aT" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927104544" />
            </node>
            <node concept="liA8E" id="aU" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927104544" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a5" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927104815" />
          <node concept="2OqwBi" id="aV" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927104815" />
            <node concept="37vLTw" id="aW" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927104815" />
            </node>
            <node concept="liA8E" id="aX" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288927104815" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a6" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928344715" />
          <node concept="2OqwBi" id="aY" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928344715" />
            <node concept="37vLTw" id="aZ" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928344715" />
            </node>
            <node concept="liA8E" id="b0" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288928344715" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a7" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928438745" />
          <node concept="2OqwBi" id="b1" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928438745" />
            <node concept="37vLTw" id="b2" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928438745" />
            </node>
            <node concept="liA8E" id="b3" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288928438745" />
              <node concept="Xl_RD" id="b4" role="37wK5m">
                <property role="Xl_RC" value="time = millis();" />
                <uo k="s:originTrace" v="n:6281736288928438745" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a8" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928439280" />
          <node concept="2OqwBi" id="b5" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928439280" />
            <node concept="37vLTw" id="b6" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928439280" />
            </node>
            <node concept="liA8E" id="b7" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288928439280" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="a9" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928429807" />
          <node concept="2OqwBi" id="b8" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928429807" />
            <node concept="37vLTw" id="b9" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928429807" />
            </node>
            <node concept="liA8E" id="ba" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288928429807" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aa" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928524603" />
          <node concept="2OqwBi" id="bb" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928524603" />
            <node concept="37vLTw" id="bc" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928524603" />
            </node>
            <node concept="liA8E" id="bd" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288928524603" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ab" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928430567" />
          <node concept="2OqwBi" id="be" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928430567" />
            <node concept="37vLTw" id="bf" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928430567" />
            </node>
            <node concept="liA8E" id="bg" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288928430567" />
              <node concept="Xl_RD" id="bh" role="37wK5m">
                <property role="Xl_RC" value="state_" />
                <uo k="s:originTrace" v="n:6281736288928430567" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ac" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928430911" />
          <node concept="2OqwBi" id="bi" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928430911" />
            <node concept="37vLTw" id="bj" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928430911" />
            </node>
            <node concept="liA8E" id="bk" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288928430911" />
              <node concept="2YIFZM" id="bl" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <uo k="s:originTrace" v="n:6281736288928431236" />
                <node concept="2OqwBi" id="bm" role="37wK5m">
                  <uo k="s:originTrace" v="n:6281736288928433878" />
                  <node concept="2OqwBi" id="bn" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6281736288928432441" />
                    <node concept="37vLTw" id="bp" role="2Oq$k0">
                      <ref role="3cqZAo" node="9W" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="bq" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="bo" role="2OqNvi">
                    <ref role="3Tt5mk" to="5893:1YJQPZaOri4" resolve="target" />
                    <uo k="s:originTrace" v="n:6281736288928435022" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ad" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928435589" />
          <node concept="2OqwBi" id="br" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928435589" />
            <node concept="37vLTw" id="bs" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928435589" />
            </node>
            <node concept="liA8E" id="bt" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288928435589" />
              <node concept="Xl_RD" id="bu" role="37wK5m">
                <property role="Xl_RC" value="(); " />
                <uo k="s:originTrace" v="n:6281736288928435589" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ae" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928436098" />
          <node concept="2OqwBi" id="bv" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928436098" />
            <node concept="37vLTw" id="bw" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928436098" />
            </node>
            <node concept="liA8E" id="bx" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288928436098" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="af" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288928256558" />
          <node concept="2OqwBi" id="by" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288928256558" />
            <node concept="37vLTw" id="bz" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288928256558" />
            </node>
            <node concept="liA8E" id="b$" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.indent()" resolve="indent" />
              <uo k="s:originTrace" v="n:6281736288928256558" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ag" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927118775" />
          <node concept="2OqwBi" id="b_" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927118775" />
            <node concept="37vLTw" id="bA" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927118775" />
            </node>
            <node concept="liA8E" id="bB" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927118775" />
              <node concept="Xl_RD" id="bC" role="37wK5m">
                <property role="Xl_RC" value="} else {  state_" />
                <uo k="s:originTrace" v="n:6281736288927118775" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ah" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927120313" />
          <node concept="2OqwBi" id="bD" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927120313" />
            <node concept="37vLTw" id="bE" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927120313" />
            </node>
            <node concept="liA8E" id="bF" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927120313" />
              <node concept="2OqwBi" id="bG" role="37wK5m">
                <uo k="s:originTrace" v="n:6281736288927147551" />
                <node concept="2OqwBi" id="bH" role="2Oq$k0">
                  <uo k="s:originTrace" v="n:6281736288927145594" />
                  <node concept="2OqwBi" id="bJ" role="2Oq$k0">
                    <uo k="s:originTrace" v="n:6281736288927128535" />
                    <node concept="37vLTw" id="bL" role="2Oq$k0">
                      <ref role="3cqZAo" node="9W" resolve="ctx" />
                    </node>
                    <node concept="liA8E" id="bM" role="2OqNvi">
                      <ref role="37wK5l" to="yfwt:~TextGenContext.getPrimaryInput()" resolve="getPrimaryInput" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="bK" role="2OqNvi">
                    <ref role="3Tt5mk" to="5893:1YJQPZaOri4" resolve="target" />
                    <uo k="s:originTrace" v="n:6281736288927146698" />
                  </node>
                </node>
                <node concept="3TrcHB" id="bI" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  <uo k="s:originTrace" v="n:6281736288927149014" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ai" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927132870" />
          <node concept="2OqwBi" id="bN" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927132870" />
            <node concept="37vLTw" id="bO" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927132870" />
            </node>
            <node concept="liA8E" id="bP" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.append(java.lang.CharSequence)" resolve="append" />
              <uo k="s:originTrace" v="n:6281736288927132870" />
              <node concept="Xl_RD" id="bQ" role="37wK5m">
                <property role="Xl_RC" value="(); }" />
                <uo k="s:originTrace" v="n:6281736288927132870" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="aj" role="3cqZAp">
          <uo k="s:originTrace" v="n:6281736288927337906" />
          <node concept="2OqwBi" id="bR" role="3clFbG">
            <uo k="s:originTrace" v="n:6281736288927337906" />
            <node concept="37vLTw" id="bS" role="2Oq$k0">
              <ref role="3cqZAo" node="ak" resolve="tgs" />
              <uo k="s:originTrace" v="n:6281736288927337906" />
            </node>
            <node concept="liA8E" id="bT" role="2OqNvi">
              <ref role="37wK5l" to="kpbf:~TextGenSupport.newLine()" resolve="newLine" />
              <uo k="s:originTrace" v="n:6281736288927337906" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="9W" role="3clF46">
        <property role="TrG5h" value="ctx" />
        <property role="3TUv4t" value="true" />
        <uo k="s:originTrace" v="n:6281736288927054616" />
        <node concept="3uibUv" id="bU" role="1tU5fm">
          <ref role="3uigEE" to="yfwt:~TextGenContext" resolve="TextGenContext" />
          <uo k="s:originTrace" v="n:6281736288927054616" />
        </node>
      </node>
      <node concept="2AHcQZ" id="9X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <uo k="s:originTrace" v="n:6281736288927054616" />
      </node>
    </node>
  </node>
</model>

