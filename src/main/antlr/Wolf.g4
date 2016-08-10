grammar Wolf;
import CommonLexerRules;

prog:   stat+ ;

stat: expr NEWLINE                 # printExpr
    | ID ASSIGN expr NEWLINE       # assign
    | NEWLINE                      # blank
    ;
expr: expr op=(MUL | DIV) expr     # MulDiv
    | expr op=(ADD | SUB) expr     # AddSub
    | expr POW expr                # power
    | INT                          # int
    | ID                           # id
    | '(' expr ')'                 # parens
    ;
