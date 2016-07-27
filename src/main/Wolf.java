import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.InputStream;
import java.io.FileInputStream;

public class Wolf {
    public static void main(String[] args) throws Exception {
        String inputFile = null;

        if (args.length > 0 ) inputFile = args[0];

        InputStream is = System.in;
        if (inputFile != null ) is = new FileInputStream(inputFile);
        ANTLRInputStream inputStream = new ANTLRInputStream(is);
        WolfLexer lexer = new WolfLexer(inputStream);
        CommonTokenStream tokenStream = new CommonTokenStream(lexer);
        WolfParser parser = new WolfParser(tokenStream);
        ParseTree tree = parser.init();
        System.out.println(tree.toStringTree(parser));
    }
}
