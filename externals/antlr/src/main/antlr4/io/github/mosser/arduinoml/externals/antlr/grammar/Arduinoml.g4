grammar Arduinoml;

/******************
 ** Parser rules **
 ******************/

root            :   declaration bricks states EOF;

declaration     :   APPLICATION name=IDENTIFIER;

bricks          :   (sensor | actuator)+;
    sensor      :   SENSOR location ;
    actuator    :   ACTUATOR location ;
    location    :   id=IDENTIFIER COLON port=PORT_NUMBER;

states          :   state+;
    state       :   initial? name=IDENTIFIER '{'  action* transition? '}';
    action      :   receiver=IDENTIFIER LEQ value=SIGNAL;
    initial     :   ARROW;

    transition  :   trigger=IDENTIFIER IS value=SIGNAL ARROW next=IDENTIFIER ;

    compoundTransition : FROM source=IDENTIFIER TO target=IDENTIFIER WHEN condition;
    condition   :   singleCondition ( (AND | OR) singleCondition )*;
    singleCondition : sensorName=IDENTIFIER BECOMES value=SIGNAL;

/*****************
 ** Lexer rules **
 *****************/

// Définissez explicitement les tokens
APPLICATION     : 'application';
SENSOR          : 'sensor';
ACTUATOR        : 'actuator';
COLON           : ':';
LBRACE          : '{';
RBRACE          : '}';
LEQ             : '<=';
ARROW           : '->';
IS              : 'is';
FROM            : 'from';
TO              : 'to';
WHEN            : 'when';
AND             : 'and';
OR              : 'or';
BECOMES         : 'becomes';

PORT_NUMBER     : [1-9] | '10' | '11' | '12' | '13' | 'A0' | 'A1' | 'A2' | 'A3' | 'A4' | 'A5';
IDENTIFIER      : LOWERCASE (LOWERCASE | UPPERCASE | DIGIT)*;
SIGNAL          : 'HIGH' | 'LOW';

/*************
 ** Helpers **
 *************/

fragment LOWERCASE  : [a-z];
fragment UPPERCASE  : [A-Z];
fragment DIGIT      : [0-9];
NEWLINE             : ('\r'? '\n' | '\r')+ -> skip;
WS                  : [ \t]+ -> skip;
COMMENT             : '#' ~[\r\n]* -> skip;
