lexer grammar CommonLexerRules;

ASSIGN: '=';
MUL: '*';
DIV: '/';
ADD: '+';
SUB: '-';
POW: '**';
ID: [_a-zA-z][_a-zA-Z0-9$]*;  // match identifiers
INT: [0-9]+;                  // match integers
REAL: [0-9]+'.'? [0-9]*;      // match floating point numbers
NEWLINE: '\r'? '\n';          // return newlines to parser (is end-statement signal)
WS: [ \t]+ -> skip;           // toss out whitespace
