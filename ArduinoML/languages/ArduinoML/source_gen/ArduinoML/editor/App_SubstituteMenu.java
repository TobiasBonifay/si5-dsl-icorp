package ArduinoML.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.menus.substitute.SubstituteMenuBase;
import jetbrains.mps.lang.editor.menus.EditorMenuDescriptorBase;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import jetbrains.mps.lang.editor.menus.MenuPart;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuItem;
import jetbrains.mps.openapi.editor.menus.substitute.SubstituteMenuContext;
import java.util.ArrayList;
import jetbrains.mps.lang.editor.menus.substitute.ConstraintsFilteringSubstituteMenuPartDecorator;
import jetbrains.mps.lang.editor.menus.substitute.ReferenceScopeSubstituteMenuPart;
import jetbrains.mps.lang.editor.menus.ConceptMenusPart;
import java.util.Collection;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.editor.menus.substitute.DefaultSubstituteMenuLookup;
import jetbrains.mps.smodel.language.LanguageRegistry;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SReferenceLink;

public class App_SubstituteMenu extends SubstituteMenuBase {
  public App_SubstituteMenu() {
    super(false, new EditorMenuDescriptorBase("default substitute menu for App. Generated from implicit smart reference attribute.", new SNodePointer("r:c3f7684f-829d-4d32-b054-5894ce11edee(ArduinoML.structure)", "3849064725405907255")));
  }
  @NotNull
  @Override
  protected List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> getParts(final SubstituteMenuContext _context) {
    List<MenuPart<SubstituteMenuItem, SubstituteMenuContext>> result = new ArrayList<MenuPart<SubstituteMenuItem, SubstituteMenuContext>>();
    result.add(new ConstraintsFilteringSubstituteMenuPartDecorator(new SMP_ReferenceScope_u5o6fv_a(), CONCEPTS.App$FB));
    result.add(new SMP_Subconcepts_u5o6fv_b());
    return result;
  }

  public class SMP_ReferenceScope_u5o6fv_a extends ReferenceScopeSubstituteMenuPart {

    public SMP_ReferenceScope_u5o6fv_a() {
      super(CONCEPTS.App$FB, LINKS.init_state$x2RK, new EditorMenuDescriptorBase("reference scope substitute menu part", null));
    }

  }
  public class SMP_Subconcepts_u5o6fv_b extends ConceptMenusPart<SubstituteMenuItem, SubstituteMenuContext> {
    public SMP_Subconcepts_u5o6fv_b() {
      super(new EditorMenuDescriptorBase("include menus for all the direct subconcepts of " + "App", null));
    }

    @Override
    protected Collection<SAbstractConcept> getConcepts(final SubstituteMenuContext _context) {
      return getDirectDescendants(_context, CONCEPTS.App$FB);
    }

    @Override
    protected Collection<SubstituteMenuItem> createItemsForConcept(SubstituteMenuContext context, SAbstractConcept concept) {
      return context.createItems(new DefaultSubstituteMenuLookup(LanguageRegistry.getInstance(context.getEditorContext().getRepository()), concept));
    }
  }

  private static final class CONCEPTS {
    /*package*/ static final SConcept App$FB = MetaAdapterFactory.getConcept(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x356a9ff97b4e3937L, "ArduinoML.structure.App");
  }

  private static final class LINKS {
    /*package*/ static final SReferenceLink init_state$x2RK = MetaAdapterFactory.getReferenceLink(0x87da0c0a7e99440eL, 0xa46728249a7a2c96L, 0x356a9ff97b4e3937L, 0x1fafdb5fcad1b4a6L, "init_state");
  }
}