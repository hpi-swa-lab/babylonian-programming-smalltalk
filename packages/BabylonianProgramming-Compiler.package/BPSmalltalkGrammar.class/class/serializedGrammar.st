serialized grammar
serializedGrammar
^ 'BPSmalltalk <: OhmSmalltalk {

AnnotationInformation =
	Operand KeywordMessage?

Expression := NormalExpression | AnnotatedExpression
	
NormalExpression =
	Operand (MessageChain CascadedMessage*)?

AnnotatedExpression =
	expressionAnnotationStart Expression expressionAnnotationEnd


Operand := NormalOperand | AnnotatedOperand

NormalOperand =
	Literal
	| Reference
	| NestedExpression

AnnotatedOperand =
	expressionAnnotationStart Operand expressionAnnotationEnd



KeywordMessage := NormalKeywordMessage | AnnotatedKeywordMessage

NormalKeywordMessage = KeywordMessageSegment+

AnnotatedKeywordMessage =
	expressionAnnotationStart KeywordMessage expressionAnnotationEnd
	

BinaryMessage := NormalBinaryMessage | AnnotatedBinaryMessage

NormalBinaryMessage = binaryMessageSelector BinaryMessageOperand

AnnotatedBinaryMessage =
	expressionAnnotationStart BinaryMessage expressionAnnotationEnd
	
	
UnaryMessage := NormalUnaryMessage | AnnotatedUnaryMessage

NormalUnaryMessage = ~keyword UnaryMessageSelector

AnnotatedUnaryMessage =
	expressionAnnotationStart UnaryMessage expressionAnnotationEnd
	

comment :=
	~"\"<" "\"" (~"\"" (any | " " | "\n"))* "\""

expressionAnnotationStart =
	"\"<" space* ~"/" space* AnnotationInformation space* ">\""
	
expressionAnnotationEnd = 
	"\"</" space* Operand space* ">\""

}'