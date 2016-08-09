lexer grammar CommonLexerRules;

ASSIGN: '=';
MUL: '*';
DIV: '/';
ADD: '+';
SUB: '-';
POW: '**';
ID: [_a-zA-z][_a-zA-Z0-9$]*;
INT: [0-9]+;
REAL: [0-9]+'.'? [0-9]*;
NEWLINE: '\r'? '\n';
WS: [ \t]+ -> skip;
