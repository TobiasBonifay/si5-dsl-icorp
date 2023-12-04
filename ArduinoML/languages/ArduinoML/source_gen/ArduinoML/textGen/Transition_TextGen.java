package ArduinoML.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SProperty;

public class Transition_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.append("if (digitalRead(");
    tgs.append(SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.sensor$8Ghv), PROPS.name$MnvL));
    tgs.append(") == ");
    tgs.append(String.valueOf(SPropertyOperations.getEnum(ctx.getPrimaryInput(), PROPS.status$8F$s)));
    tgs.append(" && guard ) {");
    tgs.newLine();
    tgs.indent();
    tgs.indent();
    tgs.append("time = millis();");
    tgs.newLine();
    tgs.indent();
    tgs.indent();
    tgs.append("state_");
    tgs.append(String.valueOf(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.target$8GYy)));
    tgs.append("(); ");
    tgs.newLine();
    tgs.indent();
    tgs.append("} else {  state_");
    tgs.append(SPropertyOperations.getString(SLinkOperations.getTarget(ctx.getPrimaryInput(), LINKS.target$8GYy), PROPS.name$MnvL));
    tgs.append("(); }");
    tgs.newLine();
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink sensor$8Ghv = MetaAdapterFactory.getReferenceLink(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x1fafdb5fcad1b47cL, 0x1fafdb5fcad1b481L, "sensor");
    /*package*/ static final SReferenceLink target$8GYy = MetaAdapterFactory.getReferenceLink(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x1fafdb5fcad1b47cL, 0x1fafdb5fcad1b484L, "target");
  }

  private static final class PROPS {
    /*package*/ static final SProperty name$MnvL = MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name");
    /*package*/ static final SProperty status$8F$s = MetaAdapterFactory.getProperty(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x1fafdb5fcad1b47cL, 0x1fafdb5fcad1b47eL, "status");
  }
}
