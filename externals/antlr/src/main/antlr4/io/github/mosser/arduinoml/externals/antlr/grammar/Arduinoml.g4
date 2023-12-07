grammar Arduinoml;

/******************
 ** Parser rules **
 ******************/

root            : declaration bricks states initialState transitions EOF;

declaration     : APPLICATION name=STRING;

bricks          : (sensor | actuator)+;
sensor          : SENSOR STRING ',' PORT_NUMBER;
actuator        : ACTUATOR STRING ',' PORT_NUMBER;

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
PORT_NUMBER     : [1-9] | '10' | '11' | '12' | '13' | 'A0' | 'A1' | 'A2' | 'A3' | 'A4' | 'A5';

/*************
 ** Helpers **
 *************/

fragment LOWERCASE  : [a-z];
fragment UPPERCASE  : [A-Z];
fragment DIGIT      : [0-9];
NEWLINE             : ('\r'? '\n' | '\r')+ -> skip;
WS                  : [ \t]+ -> skip;
COMMENT             : '#' ~[\r\n]* -> skip;
