import java.util.HashMap;
import java.util.Map;

public class EvalVisitor extends WolfBaseVisitor<Integer> {
  Map<String, Integer> memory = new HashMap<String, Integer>();

    @Override
    public Integer visitAssign(WolfParser.AssignContext ctx) {
        String id = ctx.ID().getText();
        int value = visit(ctx.expr());
        memory.put(id, value);
        return value;
    }

    @Override
    public Integer visitPrintExpr(WolfParser.PrintExprContext ctx) {
        Integer value = visit(ctx.expr());
        System.out.println(value);
        return 0;
    }

   @Override
   public Integer visitInt(WolfParser.IntContext ctx) {
       return Integer.valueOf(ctx.INT().getText());
   }

    @Override
    public Integer visitId(WolfParser.IdContext ctx) {
        String id = ctx.ID().getText();
        if ( memory.containsKey(id) ) return memory.get(id);
        return 0;
    }

    @Override
    public Integer visitMulDiv(WolfParser.MulDivContext ctx) {
        int left = visit(ctx.expr(0));
        int right = visit(ctx.expr(1));
        if ( ctx.op.getType() == WolfParser.MUL ) return left * right;
        return left / right;
    }

    @Override
    public Integer visitAddSub(WolfParser.AddSubContext ctx) {
        int left = visit(ctx.expr(0));
        int right = visit(ctx.expr(1));
        if ( ctx.op.getType() == WolfParser.ADD ) return left + right;
        return left - right;
    }

    @Override
    public Integer visitPower(WolfParser.PowerContext ctx) {
        int left = visit(ctx.expr(0));
        int right = visit(ctx.expr(1));
        return (int)Math.pow(left, right);
    }

    @Override
    public Integer visitParens(WolfParser.ParensContext ctx) {
        return visit(ctx.expr());
    }
}
