<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2116c328-7eb6-46c9-a0b2-37b394485896(ArduinoML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5893" ref="r:c3f7684f-829d-4d32-b054-5894ce11edee(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3lEBZ_VjMCK">
    <ref role="1XX52x" to="5893:3lEBZ_Vjz$O" resolve="Actuator" />
    <node concept="3EZMnI" id="3lEBZ_VjMCM" role="2wV5jI">
      <node concept="3F0ifn" id="3lEBZ_VjMCW" role="3EZMnx">
        <property role="3F0ifm" value="actuator" />
      </node>
      <node concept="3F0A7n" id="3lEBZ_VjMDg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3lEBZ_VjMDo" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="3lEBZ_VjMDy" role="3EZMnx">
        <ref role="1NtTu8" to="5893:3lEBZ_Vjz$L" resolve="pin" />
      </node>
      <node concept="2iRfu4" id="3lEBZ_VjMCP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3lEBZ_VjMDM">
    <ref role="1XX52x" to="5893:3lEBZ_Vjz$P" resolve="Sensor" />
    <node concept="3EZMnI" id="3lEBZ_VjMDR" role="2wV5jI">
      <node concept="3F0ifn" id="3lEBZ_VjMDY" role="3EZMnx">
        <property role="3F0ifm" value="sensor" />
      </node>
      <node concept="3F0A7n" id="3lEBZ_VjME4" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="3lEBZ_VjMEc" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="3lEBZ_VjMEm" role="3EZMnx">
        <ref role="1NtTu8" to="5893:3lEBZ_Vjz$L" resolve="pin" />
      </node>
      <node concept="2iRfu4" id="3lEBZ_VjMDU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHdtXE8DhR">
    <ref role="1XX52x" to="5893:1YJQPZaOrib" resolve="Action" />
    <node concept="3EZMnI" id="5sHdtXE8DhT" role="2wV5jI">
      <node concept="1iCGBv" id="5sHdtXE8Di3" role="3EZMnx">
        <ref role="1NtTu8" to="5893:1YJQPZaOrii" resolve="actuator" />
        <node concept="1sVBvm" id="5sHdtXE8Di5" role="1sWHZn">
          <node concept="3F0A7n" id="5sHdtXE8Dif" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5sHdtXE8Dit" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="5sHdtXE8DiK" role="3EZMnx">
        <ref role="1NtTu8" to="5893:1YJQPZaOrie" resolve="status" />
      </node>
      <node concept="l2Vlx" id="5sHdtXE8DhW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHdtXE8Dj3">
    <ref role="1XX52x" to="5893:1YJQPZaOrhW" resolve="Transition" />
    <node concept="3EZMnI" id="5sHdtXE8Dj5" role="2wV5jI">
      <node concept="1iCGBv" id="5sHdtXE8Djf" role="3EZMnx">
        <ref role="1NtTu8" to="5893:1YJQPZaOri1" resolve="sensor" />
        <node concept="1sVBvm" id="5sHdtXE8Djh" role="1sWHZn">
          <node concept="3F0A7n" id="5sHdtXE8Djo" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5sHdtXE8Djw" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0A7n" id="5sHdtXE8DjN" role="3EZMnx">
        <ref role="1NtTu8" to="5893:1YJQPZaOrhY" resolve="status" />
      </node>
      <node concept="3F0ifn" id="5sHdtXE8Dk9" role="3EZMnx">
        <property role="3F0ifm" value="=&gt;" />
      </node>
      <node concept="1iCGBv" id="5sHdtXE8Dky" role="3EZMnx">
        <ref role="1NtTu8" to="5893:1YJQPZaOri4" resolve="target" />
        <node concept="1sVBvm" id="5sHdtXE8Dk$" role="1sWHZn">
          <node concept="3F0A7n" id="5sHdtXE8DkL" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5sHdtXE8Dj8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5sHdtXE8DkO">
    <ref role="1XX52x" to="5893:1YJQPZaOlWN" resolve="State" />
    <node concept="3EZMnI" id="5sHdtXE8DkQ" role="2wV5jI">
      <node concept="3EZMnI" id="5sHdtXE8DkX" role="3EZMnx">
        <node concept="VPM3Z" id="5sHdtXE8DkZ" role="3F10Kt" />
        <node concept="3F0A7n" id="5sHdtXE8Dlb" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="5sHdtXE8Dlh" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
        <node concept="l2Vlx" id="5sHdtXE8Dl2" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5sHdtXE8DlC" role="3EZMnx">
        <node concept="VPM3Z" id="5sHdtXE8DlE" role="3F10Kt" />
        <node concept="l2Vlx" id="5sHdtXE8DlH" role="2iSdaV" />
        <node concept="3XFhqQ" id="5sHdtXE8DmC" role="3EZMnx" />
        <node concept="3F2HdR" id="5sHdtXE8DmI" role="3EZMnx">
          <ref role="1NtTu8" to="5893:1YJQPZaOrim" resolve="actions" />
          <node concept="2iRkQZ" id="5sHdtXE8DmL" role="2czzBx" />
          <node concept="VPM3Z" id="5sHdtXE8DmM" role="3F10Kt" />
        </node>
      </node>
      <node concept="3EZMnI" id="5sHdtXE8Dnh" role="3EZMnx">
        <node concept="VPM3Z" id="5sHdtXE8Dnj" role="3F10Kt" />
        <node concept="3XFhqQ" id="5sHdtXE8DnI" role="3EZMnx" />
        <node concept="3F1sOY" id="5sHdtXE8DnO" role="3EZMnx">
          <ref role="1NtTu8" to="5893:1YJQPZaOrip" resolve="transition" />
        </node>
        <node concept="l2Vlx" id="5sHdtXE8Dnm" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5sHdtXE8DkT" role="2iSdaV" />
    </node>
  </node>
</model>

