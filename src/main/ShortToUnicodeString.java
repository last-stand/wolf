import org.antlr.v4.runtime.*;

public class ShortToUnicodeString extends WolfBaseListener {

  /** Translate { to " */
  @Override
  public void enterInit(WolfParser.InitContext ctx) {
    System.out.print('"');
  }

  /** Translate } to " */
  @Override
  public void exitInit(WolfParser.InitContext ctx) {
    System.out.print('"');
  }

   /** Translate integers to 4-digit hexadecimal strings prefixed with \\u */
  @Override
  public void enterValue(WolfParser.ValueContext ctx) {
          // Assumes no nested array initializers
  int value = Integer.valueOf(ctx.INT().getText());
    System.out.printf("\\u%04x", value);
  }
}
