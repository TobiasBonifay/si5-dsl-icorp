grammar Arduinoml;

/******************
 ** Parser rules **
 ******************/

root            :   declaration bricks states transitions EOF;

declaration     :   APPLICATION identifier;
identifier      :   IDENTIFIER | QUOTED_IDENTIFIER;

bricks          :   (sensor | actuator)+;
sensor          :   SENSOR location;
actuator        :   ACTUATOR location;
location        :   id=IDENTIFIER COLON port=PORT_NUMBER;

states          :   state+;
state           :   initial? name=IDENTIFIER '{' action* '}';
action          :   receiver=IDENTIFIER LEQ value=SIGNAL;
initial         :   ARROW;

transitions     :   transition+;
transition      :   FROM source=IDENTIFIER TO target=IDENTIFIER WHEN condition;
condition       :   singleCondition ( (AND | OR) singleCondition )*;
singleCondition :   sensorName=IDENTIFIER BECOMES value=SIGNAL;

/*****************
 ** Lexer rules **
 *****************/

APPLICATION     : 'application';
SENSOR          : 'sensor';
ACTUATOR        : 'actuator';
COLON           : ':';
PORT_NUMBER     : [1-9] | '10' | '11' | '12' | '13' | 'A0' | 'A1' | 'A2' | 'A3' | 'A4' | 'A5';
IDENTIFIER      : (LOWERCASE | UPPERCASE | DIGIT | '_' | '-')+;
QUOTED_IDENTIFIER : '"' (LOWERCASE | UPPERCASE | DIGIT | '_' | '-')* '"';
SIGNAL          : 'HIGH' | 'LOW';
LEQ             : '<=';
ARROW           : '->';
FROM            : 'from';
TO              : 'to';
WHEN            : 'when';
AND             : 'and';
OR              : 'or';
BECOMES         : 'becomes';

/*************
 ** Helpers **
 *************/

fragment LOWERCASE  : [a-z];
fragment UPPERCASE  : [A-Z];
fragment DIGIT      : [0-9];
NEWLINE             : ('\r'? '\n' | '\r')+ -> skip;
WS                  : [ \t]+ -> skip;
COMMENT             : '#' ~[\r\n]* -> skip;
