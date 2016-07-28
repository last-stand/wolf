import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.InputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;

public class Wolf {
    public static void main(String[] args) throws Exception {
        String inputFile = null;

        if (args.length > 0 )
          inputFile = args[0];
        else
          System.out.println("Enter input string to parse: \n");

        InputStream is = System.in;
        if (inputFile != null ){
          File file = new File(inputFile);
          is = file.exists() ? new FileInputStream(inputFile) : new ByteArrayInputStream(inputFile.getBytes(StandardCharsets.UTF_8));
        }
        ANTLRInputStream inputStream = new ANTLRInputStream(is);
        WolfLexer lexer = new WolfLexer(inputStream);
        CommonTokenStream tokenStream = new CommonTokenStream(lexer);
        WolfParser parser = new WolfParser(tokenStream);
        ParseTree tree = parser.init();
        System.out.println(tree.toStringTree(parser));
    }
}
