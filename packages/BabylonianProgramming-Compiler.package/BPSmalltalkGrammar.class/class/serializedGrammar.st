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

comment :=
	~"\"<" "\"" (~"\"" (any | " " | "\n"))* "\""

expressionAnnotationStart =
	"\"<" space* ~"/" space* AnnotationInformation space* ">\""
	
expressionAnnotationEnd = 
	"\"</" space* Operand space* ">\""

}'