import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import grammar.*;
public class Wolf {
    public static void main(String[] args) throws Exception {
        ANTLRInputStream inputStream = new ANTLRInputStream(System.in);
        WolfLexer lexer = new WolfLexer(inputStream);
        CommonTokenStream tokenStream = new CommonTokenStream(lexer);
        WolfParser parser = new WolfParser(tokenStream);
        ParseTree tree = parser.init();
        System.out.println(tree.toStringTree(parser));
    }
}
