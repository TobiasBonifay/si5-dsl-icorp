grammar Arduinoml;

/******************
 ** Parser rules **
 ******************/

root            : declaration bricks states initialState transitions EOF;

declaration     : APPLICATION name=STRING;

bricks          : (sensor | actuator)+;
sensor          : SENSOR STRING ',' port=PORT;
actuator        : ACTUATOR STRING ',' port=PORT;


states          : state+;
state           : STATE STRING MEANS actions;
actions         : action (AND action)*;
action          : STRING BECOMES SIGNAL;

initialState    : INITIAL STRING;

transitions     : transition+;
transition      : FROM STRING TO STRING WHEN condition;
condition       : singleCondition ( (AND | OR) singleCondition )*;
singleCondition : STRING BECOMES SIGNAL;

/*****************
 ** Lexer rules **
 *****************/

APPLICATION     : 'application';
SENSOR          : 'sensor';
ACTUATOR        : 'actuator';
STATE           : 'state';
INITIAL         : 'initial';
FROM            : 'from';
TO              : 'to';
WHEN            : 'when';
AND             : 'and';
OR              : 'or';
BECOMES         : 'becomes';
MEANS           : 'means';

STRING          : '"' (LOWERCASE | UPPERCASE | DIGIT | '_' | '-')* '"';
SIGNAL          : 'HIGH' | 'LOW';

PORT : (ANALOG | DIGITAL) ' ' PORT_NUMBER | PORT_NUMBER | ANALOG_PIN;
PORT_TYPE   : DIGITAL | ANALOG;
DIGITAL     : 'digital';
ANALOG      : 'analog';
PORT_NUMBER : [0-9] | '1' [0-3]; // Covers 0 to 13
ANALOG_PIN  : 'A' [0-5];         // Covers A0 to A5


/*************
 ** Helpers **
 *************/

fragment LOWERCASE  : [a-z];
fragment UPPERCASE  : [A-Z];
fragment DIGIT      : [0-9];
NEWLINE             : ('\r'? '\n' | '\r')+ -> skip;
WS                  : [ \t\r\n]+ -> skip;
COMMENT             : '#' ~[\r\n]* -> skip;