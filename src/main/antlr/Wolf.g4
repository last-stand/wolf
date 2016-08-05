grammar Wolf;
import CommonLexerRules;

prog: stat+ ;
stat: expr NEWLINE
    | ID ASSIGN expr NEWLINE
    | NEWLINE
    ;
expr: expr (MUL | DIV) expr
    | expr (ADD | SUB) expr
    | expr POW expr
    | INT
    | ID
    | '(' expr ')'
    ;
