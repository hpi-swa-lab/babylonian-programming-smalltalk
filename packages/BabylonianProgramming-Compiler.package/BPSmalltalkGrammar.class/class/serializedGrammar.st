serialized grammar
serializedGrammar
^ 'BPSmalltalk <: OhmSmalltalk {

AnnotationInformation =
	Operand KeywordMessage?

Expression := AnnotatedExpression | NormalExpression
	
NormalExpression =
	Operand (MessageChain CascadedMessage*)?

AnnotatedExpression =
	expressionAnnotationStart Expression expressionAnnotationEnd

comment :=
	~"\"<" "\"" (~"\"" (any | " " | "\n"))* "\""

expressionAnnotationStart =
	"\"<" space* ~"/" space* AnnotationInformation space* ">\""
	
expressionAnnotationEnd = 
	"\"</" space* Operand space* ">\""

}'