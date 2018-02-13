lexer grammar PostgreSQLLexer;

// Skip
WHITESPACE          : [ \t\r\n]+    -> skip;
BLOCK_COMMENT       : '/*' .*? '*/' -> skip;
LINE_COMMENT        : '--' .*? '\n' -> skip;

// Fragments
fragment A          : ('A'|'a') ;
fragment B          : ('B'|'b') ;
fragment C          : ('C'|'c') ;
fragment D          : ('D'|'d') ;
fragment E          : ('E'|'e') ;
fragment F          : ('F'|'f') ;
fragment G          : ('G'|'g') ;
fragment H          : ('H'|'h') ;
fragment I          : ('I'|'i') ;
fragment J          : ('J'|'j') ;
fragment K          : ('K'|'k') ;
fragment L          : ('L'|'l') ;
fragment M          : ('M'|'m') ;
fragment N          : ('N'|'n') ;
fragment O          : ('O'|'o') ;
fragment P          : ('P'|'p') ;
fragment Q          : ('Q'|'q') ;
fragment R          : ('R'|'r') ;
fragment S          : ('S'|'s') ;
fragment T          : ('T'|'t') ;
fragment U          : ('U'|'u') ;
fragment V          : ('V'|'v') ;
fragment W          : ('W'|'w') ;
fragment X          : ('X'|'x') ;
fragment Y          : ('Y'|'y') ;
fragment Z          : ('Z'|'z') ;

fragment HEX_DIGIT                    : [0-9A-F];
fragment DEC_DIGIT                    : [0-9];
fragment DQUOTA_STRING                : '"' ( '\\'. | '""' | ~('"' | '\\') )* '"';
fragment SQUOTA_STRING                : '\'' ('\\'. | '\'\'' | ~('\'' | '\\'))* '\'';
fragment BQUOTA_STRING                : '`' ( '\\'. | '``' | ~('`' | '\\'))* '`';

// Keywords

A_                                   : A;
ABORT                                : A B O R T;
ABS                                  : A B S;
ABSOLUTE                             : A B S O L U T E;
ACCESS                               : A C C E S S;
ACTION                               : A C T I O N;
ADA                                  : A D A;
ADD                                  : A D D;
ADMIN                                : A D M I N;
AFTER                                : A F T E R;
AGGREGATE                            : A G G R E G A T E;
ALIAS                                : A L I A S;
ALL                                  : A L L;
ALLOCATE                             : A L L O C A T E;
ALSO                                 : A L S O;
ALTER                                : A L T E R;
ALWAYS                               : A L W A Y S;
ANALYSE                              : A N A L Y S E;
ANALYZE                              : A N A L Y Z E;
AND                                  : A N D;
ANY                                  : A N Y;
ARE                                  : A R E;
ARRAY                                : A R R A Y;
AS                                   : A S;
ASC                                  : A S C;
ASENSITIVE                           : A S E N S I T I V E;
ASSERTION                            : A S S E R T I O N;
ASSIGNMENT                           : A S S I G N M E N T;
ASYMMETRIC                           : A S Y M M E T R I C;
AT                                   : A T;
ATOMIC                               : A T O M I C;
ATTRIBUTE                            : A T T R I B U T E;
ATTRIBUTES                           : A T T R I B U T E S;
AUTHORIZATION                        : A U T H O R I Z A T I O N;
AVG                                  : A V G;
BACKWARD                             : B A C K W A R D;
BEFORE                               : B E F O R E;
BEGIN                                : B E G I N;
BERNOULLI                            : B E R N O U L L I;
BETWEEN                              : B E T W E E N;
BIGINT                               : B I G I N T;
BINARY                               : B I N A R Y;
BIT                                  : B I T;
BITVAR                               : B I T V A R;
BIT_LENGTH                           : B I T '_' L E N G T H;
BLOB                                 : B L O B;
BOOLEAN                              : B O O L E A N;
BOTH                                 : B O T H;
BREADTH                              : B R E A D T H;
BY                                   : B Y;
C_                                   : C;
CACHE                                : C A C H E;
CALL                                 : C A L L;
CALLED                               : C A L L E D;
CARDINALITY                          : C A R D I N A L I T Y;
CASCADE                              : C A S C A D E;
CASCADED                             : C A S C A D E D;
CASE                                 : C A S E;
CAST                                 : C A S T;
CATALOG                              : C A T A L O G;
CATALOG_NAME                         : C A T A L O G '_' N A M E;
CEIL                                 : C E I L;
CEILING                              : C E I L I N G;
CHAIN                                : C H A I N;
CHAR                                 : C H A R;
CHARACTER                            : C H A R A C T E R;
CHARACTERISTICS                      : C H A R A C T E R I S T I C S;
CHARACTERS                           : C H A R A C T E R S;
CHARACTER_LENGTH                     : C H A R A C T E R '_' L E N G T H;
CHARACTER_SET_CATALOG                : C H A R A C T E R '_' S E T '_' C A T A L O G;
CHARACTER_SET_NAME                   : C H A R A C T E R '_' S E T '_' N A M E;
CHARACTER_SET_SCHEMA                 : C H A R A C T E R '_' S E T '_' S C H E M A;
CHAR_LENGTH                          : C H A R '_' L E N G T H;
CHECK                                : C H E C K;
CHECKED                              : C H E C K E D;
CHECKPOINT                           : C H E C K P O I N T;
CLASS                                : C L A S S;
CLASS_ORIGIN                         : C L A S S '_' O R I G I N;
CLOB                                 : C L O B;
CLOSE                                : C L O S E;
CLUSTER                              : C L U S T E R;
COALESCE                             : C O A L E S C E;
COBOL                                : C O B O L;
COLLATE                              : C O L L A T E;
COLLATION                            : C O L L A T I O N;
COLLATION_CATALOG                    : C O L L A T I O N '_' C A T A L O G;
COLLATION_NAME                       : C O L L A T I O N '_' N A M E;
COLLATION_SCHEMA                     : C O L L A T I O N '_' S C H E M A;
COLLECT                              : C O L L E C T;
COLUMN                               : C O L U M N;
COLUMN_NAME                          : C O L U M N '_' N A M E;
COMMAND_FUNCTION                     : C O M M A N D '_' F U N C T I O N;
COMMAND_FUNCTION_CODE                : C O M M A N D '_' F U N C T I O N '_' C O D E;
COMMENT                              : C O M M E N T;
COMMIT                               : C O M M I T;
COMMITTED                            : C O M M I T T E D;
COMPLETION                           : C O M P L E T I O N;
CONDITION                            : C O N D I T I O N;
CONDITION_NUMBER                     : C O N D I T I O N '_' N U M B E R;
CONNECT                              : C O N N E C T;
CONNECTION                           : C O N N E C T I O N;
CONNECTION_NAME                      : C O N N E C T I O N '_' N A M E;
CONSTRAINT                           : C O N S T R A I N T;
CONSTRAINTS                          : C O N S T R A I N T S;
CONSTRAINT_CATALOG                   : C O N S T R A I N T '_' C A T A L O G;
CONSTRAINT_NAME                      : C O N S T R A I N T '_' N A M E;
CONSTRAINT_SCHEMA                    : C O N S T R A I N T '_' S C H E M A;
CONSTRUCTOR                          : C O N S T R U C T O R;
CONTAINS                             : C O N T A I N S;
CONTINUE                             : C O N T I N U E;
CONVERSION                           : C O N V E R S I O N;
CONVERT                              : C O N V E R T;
COPY                                 : C O P Y;
CORR                                 : C O R R;
CORRESPONDING                        : C O R R E S P O N D I N G;
COUNT                                : C O U N T;
COVAR_POP                            : C O V A R '_' P O P;
COVAR_SAMP                           : C O V A R '_' S A M P;
CREATE                               : C R E A T E;
CREATEDB                             : C R E A T E D B;
CREATEUSER                           : C R E A T E U S E R;
CROSS                                : C R O S S;
CSV                                  : C S V;
CUBE                                 : C U B E;
CUME_DIST                            : C U M E '_' D I S T;
CURRENT                              : C U R R E N T;
CURRENT_DATE                         : C U R R E N T '_' D A T E;
CURRENT_DEFAULT_TRANSFORM_GROUP      : C U R R E N T '_' D E F A U L T '_' T R A N S F O R M '_' G R O U P;
CURRENT_PATH                         : C U R R E N T '_' P A T H;
CURRENT_ROLE                         : C U R R E N T '_' R O L E;
CURRENT_TIME                         : C U R R E N T '_' T I M E;
CURRENT_TIMESTAMP                    : C U R R E N T '_' T I M E S T A M P;
CURRENT_TRANSFORM_GROUP_FOR_TYPE     : C U R R E N T '_' T R A N S F O R M '_' G R O U P '_' F O R '_' T Y P E;
CURRENT_USER                         : C U R R E N T '_' U S E R;
CURSOR                               : C U R S O R;
CURSOR_NAME                          : C U R S O R '_' N A M E;
CYCLE                                : C Y C L E;
DATA                                 : D A T A;
DATABASE                             : D A T A B A S E;
DATE                                 : D A T E;
DATETIME_INTERVAL_CODE               : D A T E T I M E '_' I N T E R V A L '_' C O D E;
DATETIME_INTERVAL_PRECISION          : D A T E T I M E '_' I N T E R V A L '_' P R E C I S I O N;
DAY                                  : D A Y;
DEALLOCATE                           : D E A L L O C A T E;
DEC                                  : D E C;
DECIMAL                              : D E C I M A L;
DECLARE                              : D E C L A R E;
DEFAULT                              : D E F A U L T;
DEFAULTS                             : D E F A U L T S;
DEFERRABLE                           : D E F E R R A B L E;
DEFERRED                             : D E F E R R E D;
DEFINED                              : D E F I N E D;
DEFINER                              : D E F I N E R;
DEGREE                               : D E G R E E;
DELETE                               : D E L E T E;
DELIMITER                            : D E L I M I T E R;
DELIMITERS                           : D E L I M I T E R S;
DENSE_RANK                           : D E N S E '_' R A N K;
DEPTH                                : D E P T H;
DEREF                                : D E R E F;
DERIVED                              : D E R I V E D;
DESC                                 : D E S C;
DESCRIBE                             : D E S C R I B E;
DESCRIPTOR                           : D E S C R I P T O R;
DESTROY                              : D E S T R O Y;
DESTRUCTOR                           : D E S T R U C T O R;
DETERMINISTIC                        : D E T E R M I N I S T I C;
DIAGNOSTICS                          : D I A G N O S T I C S;
DICTIONARY                           : D I C T I O N A R Y;
DISCONNECT                           : D I S C O N N E C T;
DISPATCH                             : D I S P A T C H;
DISTINCT                             : D I S T I N C T;
DO                                   : D O;
DOMAIN                               : D O M A I N;
DOUBLE                               : D O U B L E;
DROP                                 : D R O P;
DYNAMIC                              : D Y N A M I C;
DYNAMIC_FUNCTION                     : D Y N A M I C '_' F U N C T I O N;
DYNAMIC_FUNCTION_CODE                : D Y N A M I C '_' F U N C T I O N '_' C O D E;
EACH                                 : E A C H;
ELEMENT                              : E L E M E N T;
ELSE                                 : E L S E;
ENCODING                             : E N C O D I N G;
ENCRYPTED                            : E N C R Y P T E D;
END                                  : E N D;
END_EXEC                             : E N D '-' E X E C;
EQUALS                               : E Q U A L S;
ESCAPE                               : E S C A P E;
EVERY                                : E V E R Y;
EXCEPT                               : E X C E P T;
EXCEPTION                            : E X C E P T I O N;
EXCLUDE                              : E X C L U D E;
EXCLUDING                            : E X C L U D I N G;
EXCLUSIVE                            : E X C L U S I V E;
EXEC                                 : E X E C;
EXECUTE                              : E X E C U T E;
EXISTING                             : E X I S T I N G;
EXISTS                               : E X I S T S;
EXP                                  : E X P;
EXPLAIN                              : E X P L A I N;
EXTERNAL                             : E X T E R N A L;
EXTRACT                              : E X T R A C T;
FALSE                                : F A L S E;
FETCH                                : F E T C H;
FILTER                               : F I L T E R;
FINAL                                : F I N A L;
FIRST                                : F I R S T;
FLOAT                                : F L O A T;
FLOOR                                : F L O O R;
FOLLOWING                            : F O L L O W I N G;
FOR                                  : F O R;
FORCE                                : F O R C E;
FOREIGN                              : F O R E I G N;
FORTRAN                              : F O R T R A N;
FORWARD                              : F O R W A R D;
FOUND                                : F O U N D;
FREE                                 : F R E E;
FREEZE                               : F R E E Z E;
FROM                                 : F R O M;
FULL                                 : F U L L;
FUNCTION                             : F U N C T I O N;
FUSION                               : F U S I O N;
G_                                   : G;
GENERAL                              : G E N E R A L;
GENERATED                            : G E N E R A T E D;
GET                                  : G E T;
GLOBAL                               : G L O B A L;
GO                                   : G O;
GOTO                                 : G O T O;
GRANT                                : G R A N T;
GRANTED                              : G R A N T E D;
GROUP                                : G R O U P;
GROUPING                             : G R O U P I N G;
HANDLER                              : H A N D L E R;
HAVING                               : H A V I N G;
HIERARCHY                            : H I E R A R C H Y;
HOLD                                 : H O L D;
HOST                                 : H O S T;
HOUR                                 : H O U R;
IDENTITY                             : I D E N T I T Y;
IGNORE                               : I G N O R E;
ILIKE                                : I L I K E;
IMMEDIATE                            : I M M E D I A T E;
IMMUTABLE                            : I M M U T A B L E;
IMPLEMENTATION                       : I M P L E M E N T A T I O N;
IMPLICIT                             : I M P L I C I T;
IN                                   : I N;
INCLUDING                            : I N C L U D I N G;
INCREMENT                            : I N C R E M E N T;
INDEX                                : I N D E X;
INDICATOR                            : I N D I C A T O R;
INFIX                                : I N F I X;
INHERITS                             : I N H E R I T S;
INITIALIZE                           : I N I T I A L I Z E;
INITIALLY                            : I N I T I A L L Y;
INNER                                : I N N E R;
INOUT                                : I N O U T;
INPUT                                : I N P U T;
INSENSITIVE                          : I N S E N S I T I V E;
INSERT                               : I N S E R T;
INSTANCE                             : I N S T A N C E;
INSTANTIABLE                         : I N S T A N T I A B L E;
INSTEAD                              : I N S T E A D;
INT                                  : I N T;
INTEGER                              : I N T E G E R;
INTERSECT                            : I N T E R S E C T;
INTERSECTION                         : I N T E R S E C T I O N;
INTERVAL                             : I N T E R V A L;
INTO                                 : I N T O;
INVOKER                              : I N V O K E R;
IS                                   : I S;
ISNULL                               : I S N U L L;
ISOLATION                            : I S O L A T I O N;
ITERATE                              : I T E R A T E;
JOIN                                 : J O I N;
K_                                   : K;
KEY                                  : K E Y;
KEY_MEMBER                           : K E Y '_' M E M B E R;
KEY_TYPE                             : K E Y '_' T Y P E;
LANCOMPILER                          : L A N C O M P I L E R;
LANGUAGE                             : L A N G U A G E;
LARGE                                : L A R G E;
LAST                                 : L A S T;
LATERAL                              : L A T E R A L;
LEADING                              : L E A D I N G;
LEFT                                 : L E F T;
LENGTH                               : L E N G T H;
LESS                                 : L E S S;
LEVEL                                : L E V E L;
LIKE                                 : L I K E;
LIMIT                                : L I M I T;
LISTEN                               : L I S T E N;
LN                                   : L N;
LOAD                                 : L O A D;
LOCAL                                : L O C A L;
LOCALTIME                            : L O C A L T I M E;
LOCALTIMESTAMP                       : L O C A L T I M E S T A M P;
LOCATION                             : L O C A T I O N;
LOCATOR                              : L O C A T O R;
LOCK                                 : L O C K;
LOCKED                               : L O C K E D; // TODO: added manually, fix in docs
LOWER                                : L O W E R;
M_                                   : M;
MAP                                  : M A P;
MATCH                                : M A T C H;
MATCHED                              : M A T C H E D;
MAX                                  : M A X;
MAXVALUE                             : M A X V A L U E;
MEMBER                               : M E M B E R;
MERGE                                : M E R G E;
MESSAGE_LENGTH                       : M E S S A G E '_' L E N G T H;
MESSAGE_OCTET_LENGTH                 : M E S S A G E '_' O C T E T '_' L E N G T H;
MESSAGE_TEXT                         : M E S S A G E '_' T E X T;
METHOD                               : M E T H O D;
MIN                                  : M I N;
MINUTE                               : M I N U T E;
MINVALUE                             : M I N V A L U E;
MOD                                  : M O D;
MODE                                 : M O D E;
MODIFIES                             : M O D I F I E S;
MODIFY                               : M O D I F Y;
MODULE                               : M O D U L E;
MONTH                                : M O N T H;
MORE_                                : M O R E;
MOVE                                 : M O V E;
MULTISET                             : M U L T I S E T;
MUMPS                                : M U M P S;
NAME                                 : N A M E;
NAMES                                : N A M E S;
NATIONAL                             : N A T I O N A L;
NATURAL                              : N A T U R A L;
NCHAR                                : N C H A R;
NCLOB                                : N C L O B;
NESTING                              : N E S T I N G;
NEW                                  : N E W;
NEXT                                 : N E X T;
NO                                   : N O;
NOCREATEDB                           : N O C R E A T E D B;
NOCREATEUSER                         : N O C R E A T E U S E R;
NONE                                 : N O N E;
NORMALIZE                            : N O R M A L I Z E;
NORMALIZED                           : N O R M A L I Z E D;
NOT                                  : N O T;
NOTHING                              : N O T H I N G;
NOTIFY                               : N O T I F Y;
NOTNULL                              : N O T N U L L;
NOWAIT                               : N O W A I T;
NULL                                 : N U L L;
NULLABLE                             : N U L L A B L E;
NULLIF                               : N U L L I F;
NULLS                                : N U L L S;
NUMBER                               : N U M B E R;
NUMERIC                              : N U M E R I C;
OBJECT                               : O B J E C T;
OCTETS                               : O C T E T S;
OCTET_LENGTH                         : O C T E T '_' L E N G T H;
OF                                   : O F;
OFF                                  : O F F;
OFFSET                               : O F F S E T;
OIDS                                 : O I D S;
OLD                                  : O L D;
ON                                   : O N;
ONLY                                 : O N L Y;
OPEN                                 : O P E N;
OPERATION                            : O P E R A T I O N;
OPERATOR                             : O P E R A T O R;
OPTION                               : O P T I O N;
OPTIONS                              : O P T I O N S;
OR                                   : O R;
ORDER                                : O R D E R;
ORDERING                             : O R D E R I N G;
ORDINALITY                           : O R D I N A L I T Y;
OTHERS                               : O T H E R S;
OUT                                  : O U T;
OUTER                                : O U T E R;
OUTPUT                               : O U T P U T;
OVER                                 : O V E R;
OVERLAPS                             : O V E R L A P S;
OVERLAY                              : O V E R L A Y;
OVERRIDING                           : O V E R R I D I N G;
OWNER                                : O W N E R;
PAD                                  : P A D;
PARAMETER                            : P A R A M E T E R;
PARAMETERS                           : P A R A M E T E R S;
PARAMETER_MODE                       : P A R A M E T E R '_' M O D E;
PARAMETER_NAME                       : P A R A M E T E R '_' N A M E;
PARAMETER_ORDINAL_POSITION           : P A R A M E T E R '_' O R D I N A L '_' P O S I T I O N;
PARAMETER_SPECIFIC_CATALOG           : P A R A M E T E R '_' S P E C I F I C '_' C A T A L O G;
PARAMETER_SPECIFIC_NAME              : P A R A M E T E R '_' S P E C I F I C '_' N A M E;
PARAMETER_SPECIFIC_SCHEMA            : P A R A M E T E R '_' S P E C I F I C '_' S C H E M A;
PARTIAL                              : P A R T I A L;
PARTITION                            : P A R T I T I O N;
PASCAL                               : P A S C A L;
PASSWORD                             : P A S S W O R D;
PATH                                 : P A T H;
PERCENTILE_CONT                      : P E R C E N T I L E '_' C O N T;
PERCENTILE_DISC                      : P E R C E N T I L E '_' D I S C;
PERCENT_RANK                         : P E R C E N T '_' R A N K;
PLACING                              : P L A C I N G;
PLI                                  : P L I;
POSITION                             : P O S I T I O N;
POSTFIX                              : P O S T F I X;
POWER                                : P O W E R;
PRECEDING                            : P R E C E D I N G;
PRECISION                            : P R E C I S I O N;
PREFIX                               : P R E F I X;
PREORDER                             : P R E O R D E R;
PREPARE                              : P R E P A R E;
PRESERVE                             : P R E S E R V E;
PRIMARY                              : P R I M A R Y;
PRIOR                                : P R I O R;
PRIVILEGES                           : P R I V I L E G E S;
PROCEDURAL                           : P R O C E D U R A L;
PROCEDURE                            : P R O C E D U R E;
PUBLIC                               : P U B L I C;
QUOTE                                : Q U O T E;
RANGE                                : R A N G E;
RANK                                 : R A N K;
READ                                 : R E A D;
READS                                : R E A D S;
REAL                                 : R E A L;
RECHECK                              : R E C H E C K;
RECURSIVE                            : R E C U R S I V E;
REF                                  : R E F;
REFERENCES                           : R E F E R E N C E S;
REFERENCING                          : R E F E R E N C I N G;
REGR_AVGX                            : R E G R '_' A V G X;
REGR_AVGY                            : R E G R '_' A V G Y;
REGR_COUNT                           : R E G R '_' C O U N T;
REGR_INTERCEPT                       : R E G R '_' I N T E R C E P T;
REGR_R2                              : R E G R '_' R '2';
REGR_SLOPE                           : R E G R '_' S L O P E;
REGR_SXX                             : R E G R '_' S X X;
REGR_SXY                             : R E G R '_' S X Y;
REGR_SYY                             : R E G R '_' S Y Y;
REINDEX                              : R E I N D E X;
RELATIVE                             : R E L A T I V E;
RELEASE                              : R E L E A S E;
RENAME                               : R E N A M E;
REPEATABLE                           : R E P E A T A B L E;
REPLACE                              : R E P L A C E;
RESET                                : R E S E T;
RESTART                              : R E S T A R T;
RESTRICT                             : R E S T R I C T;
RESULT                               : R E S U L T;
RETURN                               : R E T U R N;
RETURNED_CARDINALITY                 : R E T U R N E D '_' C A R D I N A L I T Y;
RETURNED_LENGTH                      : R E T U R N E D '_' L E N G T H;
RETURNED_OCTET_LENGTH                : R E T U R N E D '_' O C T E T '_' L E N G T H;
RETURNED_SQLSTATE                    : R E T U R N E D '_' S Q L S T A T E;
RETURNS                              : R E T U R N S;
REVOKE                               : R E V O K E;
RIGHT                                : R I G H T;
ROLE                                 : R O L E;
ROLLBACK                             : R O L L B A C K;
ROLLUP                               : R O L L U P;
ROUTINE                              : R O U T I N E;
ROUTINE_CATALOG                      : R O U T I N E '_' C A T A L O G;
ROUTINE_NAME                         : R O U T I N E '_' N A M E;
ROUTINE_SCHEMA                       : R O U T I N E '_' S C H E M A;
ROW                                  : R O W;
ROWS                                 : R O W S;
ROW_COUNT                            : R O W '_' C O U N T;
ROW_NUMBER                           : R O W '_' N U M B E R;
RULE                                 : R U L E;
SAVEPOINT                            : S A V E P O I N T;
SCALE                                : S C A L E;
SCHEMA                               : S C H E M A;
SCHEMA_NAME                          : S C H E M A '_' N A M E;
SCOPE                                : S C O P E;
SCOPE_CATALOG                        : S C O P E '_' C A T A L O G;
SCOPE_NAME                           : S C O P E '_' N A M E;
SCOPE_SCHEMA                         : S C O P E '_' S C H E M A;
SCROLL                               : S C R O L L;
SEARCH                               : S E A R C H;
SECOND                               : S E C O N D;
SECTION                              : S E C T I O N;
SECURITY                             : S E C U R I T Y;
SELECT                               : S E L E C T;
SELF                                 : S E L F;
SENSITIVE                            : S E N S I T I V E;
SEQUENCE                             : S E Q U E N C E;
SERIALIZABLE                         : S E R I A L I Z A B L E;
SERVER_NAME                          : S E R V E R '_' N A M E;
SESSION                              : S E S S I O N;
SESSION_USER                         : S E S S I O N '_' U S E R;
SET                                  : S E T;
SETOF                                : S E T O F;
SETS                                 : S E T S;
SHARE                                : S H A R E;
SHOW                                 : S H O W;
SIMILAR                              : S I M I L A R;
SIMPLE                               : S I M P L E;
SIZE                                 : S I Z E;
SKIP_                                : S K I P; // TODO: added manually, fix in docs
SMALLINT                             : S M A L L I N T;
SOME                                 : S O M E;
SOURCE                               : S O U R C E;
SPACE                                : S P A C E;
SPECIFIC                             : S P E C I F I C;
SPECIFICTYPE                         : S P E C I F I C T Y P E;
SPECIFIC_NAME                        : S P E C I F I C '_' N A M E;
SQL                                  : S Q L;
SQLCODE                              : S Q L C O D E;
SQLERROR                             : S Q L E R R O R;
SQLEXCEPTION                         : S Q L E X C E P T I O N;
SQLSTATE                             : S Q L S T A T E;
SQLWARNING                           : S Q L W A R N I N G;
SQRT                                 : S Q R T;
STABLE                               : S T A B L E;
START                                : S T A R T;
STATE                                : S T A T E;
STATEMENT                            : S T A T E M E N T;
STATIC                               : S T A T I C;
STATISTICS                           : S T A T I S T I C S;
STDDEV_POP                           : S T D D E V '_' P O P;
STDDEV_SAMP                          : S T D D E V '_' S A M P;
STDIN                                : S T D I N;
STDOUT                               : S T D O U T;
STORAGE                              : S T O R A G E;
STRICT                               : S T R I C T;
STRUCTURE                            : S T R U C T U R E;
STYLE                                : S T Y L E;
SUBCLASS_ORIGIN                      : S U B C L A S S '_' O R I G I N;
SUBLIST                              : S U B L I S T;
SUBMULTISET                          : S U B M U L T I S E T;
SUBSTRING                            : S U B S T R I N G;
SUM                                  : S U M;
SYMMETRIC                            : S Y M M E T R I C;
SYSID                                : S Y S I D;
SYSTEM                               : S Y S T E M;
SYSTEM_USER                          : S Y S T E M '_' U S E R;
TABLE                                : T A B L E;
TABLESAMPLE                          : T A B L E S A M P L E;
TABLESPACE                           : T A B L E S P A C E;
TABLE_NAME                           : T A B L E '_' N A M E;
TEMP                                 : T E M P;
TEMPLATE                             : T E M P L A T E;
TEMPORARY                            : T E M P O R A R Y;
TERMINATE                            : T E R M I N A T E;
THAN                                 : T H A N;
THEN                                 : T H E N;
TIES                                 : T I E S;
TIME                                 : T I M E;
TIME_TZ                              : T I M E T Z; // TODO: added manually, fix in docs
TIMESTAMP                            : T I M E S T A M P;
TIMESTAMP_TZ                         : T I M E S T A M P T Z; // TODO: added manually, fix in docs
TIMEZONE_HOUR                        : T I M E Z O N E '_' H O U R;
TIMEZONE_MINUTE                      : T I M E Z O N E '_' M I N U T E;
TO                                   : T O;
TOAST                                : T O A S T;
TOP_LEVEL_COUNT                      : T O P '_' L E V E L '_' C O U N T;
TRAILING                             : T R A I L I N G;
TRANSACTION                          : T R A N S A C T I O N;
TRANSACTIONS_COMMITTED               : T R A N S A C T I O N S '_' C O M M I T T E D;
TRANSACTIONS_ROLLED_BACK             : T R A N S A C T I O N S '_' R O L L E D '_' B A C K;
TRANSACTION_ACTIVE                   : T R A N S A C T I O N '_' A C T I V E;
TRANSFORM                            : T R A N S F O R M;
TRANSFORMS                           : T R A N S F O R M S;
TRANSLATE                            : T R A N S L A T E;
TRANSLATION                          : T R A N S L A T I O N;
TREAT                                : T R E A T;
TRIGGER                              : T R I G G E R;
TRIGGER_CATALOG                      : T R I G G E R '_' C A T A L O G;
TRIGGER_NAME                         : T R I G G E R '_' N A M E;
TRIGGER_SCHEMA                       : T R I G G E R '_' S C H E M A;
TRIM                                 : T R I M;
TRUE                                 : T R U E;
TRUNCATE                             : T R U N C A T E;
TRUSTED                              : T R U S T E D;
TYPE                                 : T Y P E;
UESCAPE                              : U E S C A P E;
UNBOUNDED                            : U N B O U N D E D;
UNCOMMITTED                          : U N C O M M I T T E D;
UNDER                                : U N D E R;
UNENCRYPTED                          : U N E N C R Y P T E D;
UNION                                : U N I O N;
UNIQUE                               : U N I Q U E;
UNKNOWN                              : U N K N O W N;
UNLISTEN                             : U N L I S T E N;
UNNAMED                              : U N N A M E D;
UNNEST                               : U N N E S T;
UNTIL                                : U N T I L;
UPDATE                               : U P D A T E;
UPPER                                : U P P E R;
USAGE                                : U S A G E;
USER                                 : U S E R;
USER_DEFINED_TYPE_CATALOG            : U S E R '_' D E F I N E D '_' T Y P E '_' C A T A L O G;
USER_DEFINED_TYPE_CODE               : U S E R '_' D E F I N E D '_' T Y P E '_' C O D E;
USER_DEFINED_TYPE_NAME               : U S E R '_' D E F I N E D '_' T Y P E '_' N A M E;
USER_DEFINED_TYPE_SCHEMA             : U S E R '_' D E F I N E D '_' T Y P E '_' S C H E M A;
USING                                : U S I N G;
VACUUM                               : V A C U U M;
VALID                                : V A L I D;
VALIDATOR                            : V A L I D A T O R;
VALUE                                : V A L U E;
VALUES                               : V A L U E S;
VARCHAR                              : V A R C H A R;
VARIABLE                             : V A R I A B L E;
VARIADIC                             : V A R I A D I C; // TODO: added manually, fix in docs
VARYING                              : V A R Y I N G;
VAR_POP                              : V A R '_' P O P;
VAR_SAMP                             : V A R '_' S A M P;
VERBOSE                              : V E R B O S E;
VIEW                                 : V I E W;
VOLATILE                             : V O L A T I L E;
WHEN                                 : W H E N;
WHENEVER                             : W H E N E V E R;
WHERE                                : W H E R E;
WIDTH_BUCKET                         : W I D T H '_' B U C K E T;
WINDOW                               : W I N D O W;
WITH                                 : W I T H;
WITHIN                               : W I T H I N;
WITHOUT                              : W I T H O U T;
WORK                                 : W O R K;
WRITE                                : W R I T E;
YEAR                                 : Y E A R;
ZONE                                 : Z O N E;

// Literal
COMMA                                : ',';
COLON                                : ':';
DOUBLE_COLON                         : '::';
DOLLAR                               : '$';
DOUBLE_DOLLAR                        : '$$';
STAR                                 : '*';
OPEN_PAREN                           : '(';
CLOSE_PAREN                          : ')';
OPEN_BRACKET                         : '[';
CLOSE_BRACKET                        : ']';
NUMERIC_LITERAL                      : DEC_DIGIT+ '.' DEC_DIGIT+ (E DEC_DIGIT+)?;
INTEGER_LITERAL                      : DEC_DIGIT+ (E DEC_DIGIT+)?;
DOT                                  : '.';
STRING_LITERAL                       : DQUOTA_STRING | SQUOTA_STRING;
IDENTIFIER                           : [a-zA-Z_][a-zA-Z_0-9$]*;

// text search operators
OP_TS_MATCHES                        : '@@';
OP_TS_FOLLOWED_BY                    : '<->';
OP_TS_CONTAINS                       : '@>';
OP_TS_CONTAINED                      : '<@';


// json operators
OP_JSON_GET                          : '->';
OP_JSON_GET_TEXT                     : '->>';
OP_JSON_GET_PATH                     : '#>';
OP_JSON_GET_PATH_TEXT                : '#>>';
OP_JSON_EXIST                        : '?';
OP_JSON_EXIST_ANY                    : '?|';
OP_JSON_EXIST_ALL                    : '?&';

// boolean operators
OP_LESS_THAN                         : '<';
OP_GREATER_THAN                      : '>';
OP_LESS_THAN_OR_EQ                   : '<=';
OP_GREATER_THAN_OR_EQ                : '>=';
OP_EQUAL                             : '=';
OP_NOT_EQUAL                         : ('<>'|'!=');

// array operators
OP_CONTAINS                          : '@>';
OP_CONTAINED_BY                      : '<@';
OP_OVERLAP                           : '&&';
OP_CONCAT                            : '||'; // TODO: also used in text search

// math operators
OP_ADD                               : '+';
OP_SUB                               : '-';
OP_DIV                               : '/';
OP_MOD                               : '%';
OP_EXP                               : '^';
OP_SQRT                              : '|/';
OP_CBRT                              : '||/';
OP_FACT                              : '!';
OP_FACT_PFX                          : '!!'; // TODO: also used in text search
OP_ABS                               : '@';
OP_BW_AND                            : '&';
OP_BW_OR                             : '|';
OP_BW_XOR                            : '#';
OP_BW_NOT                            : '~';
OP_BW_SHIFT_LEFT                     : '<<';
OP_BW_SHIFT_RIGHT                    : '>>';
