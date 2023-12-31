package ArduinoML.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class State_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.append("void state_");
    tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.name$MnvL));
    tgs.append("() {");
    tgs.newLine();
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.actions$BEGL)) {
      tgs.appendNode(item);
    }
    tgs.newLine();
    tgs.indent();
    tgs.append("boolean guard =  millis() - time > debounce;");
    tgs.newLine();
    tgs.indent();
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.transition$BFpO)) {
      tgs.appendNode(item);
    }
    tgs.append("}");
    tgs.newLine();
    ctx.getBuffer().area().decreaseIndent();
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink actions$BEGL = MetaAdapterFactory.getContainmentLink(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x1fafdb5fcad15f33L, 0x1fafdb5fcad1b496L, "actions");
    /*package*/ static final SContainmentLink transition$BFpO = MetaAdapterFactory.getContainmentLink(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x1fafdb5fcad15f33L, 0x1fafdb5fcad1b499L, "transition");
  }
}
