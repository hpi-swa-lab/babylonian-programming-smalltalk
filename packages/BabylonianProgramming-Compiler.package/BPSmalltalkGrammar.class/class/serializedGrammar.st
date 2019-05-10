serialized grammar
serializedGrammar
^ 'BPSmalltalk <: OhmSmalltalk {

Expression := AnnotatedExpression | NormalExpression
	
NormalExpression =
	Operand (MessageChain CascadedMessage*)?

AnnotatedExpression =
	expressionAnnotationStart Expression expressionAnnotationEnd

comment :=
	~"\"<" "\"" (~"\"" (any | " " | "\n"))* "\""

expressionAnnotationStart =
	"\"<" space* ~"/" space* Expression space* ">\""
	
expressionAnnotationEnd = 
	"\"</" space* Operand space* ">\""

}'