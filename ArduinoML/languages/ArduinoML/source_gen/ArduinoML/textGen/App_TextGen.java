package ArduinoML.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;

public class App_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.append("// code generated par moi avec text gen les bogoss");
    tgs.newLine();
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    ListSequence.fromList(SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.brick$5Mvt)).visitAll((it) -> {
      tgs.append("int ");
      tgs.append(SPropertyOperations.getString(it, PROPS.name$MnvL));
      tgs.append(" = ");
      tgs.append(String.valueOf(SPropertyOperations.getInteger(it, PROPS.pin$IZRo)));
      tgs.append(";");
      tgs.newLine();
    });
    ctx.getBuffer().area().decreaseIndent();
    tgs.append("void setup {");
    tgs.newLine();
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.brick$5Mvt)) {
      tgs.appendNode(item);
    }
    tgs.append("}");
    tgs.newLine();
    tgs.newLine();
    tgs.append("long time = 0; long debounce = 200;");
    tgs.newLine();
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.state$wWyl)) {
      tgs.appendNode(item);
    }
    tgs.newLine();

    tgs.append("void loop() { state_off(); }");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink brick$5Mvt = MetaAdapterFactory.getContainmentLink(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x356a9ff97b4e3937L, 0x356a9ff97b4e393aL, "brick");
    /*package*/ static final SContainmentLink state$wWyl = MetaAdapterFactory.getContainmentLink(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x356a9ff97b4e3937L, 0x1fafdb5fcad1b4a0L, "state");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty pin$IZRo = MetaAdapterFactory.getProperty(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x356a9ff97b4de414L, 0x356a9ff97b4e3931L, "pin");
  }
}
