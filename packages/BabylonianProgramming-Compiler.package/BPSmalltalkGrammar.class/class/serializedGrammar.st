serialized grammar
serializedGrammar
^ 'BPSmalltalk <: OhmExplicitSendsSmalltalk {

AnnotationInformation = Operand KeywordMessage?

Expression := NormalExpression | AnnotatedExpression

NormalExpression = 
	Operand CascadedMessages -- operandCascade
	| UnaryMessageSend CascadedMessages -- unaryCascade
	| BinaryMessageSend CascadedMessages -- binaryCascade
	| KeywordMessageSend
	
AnnotatedExpression =
	expressionAnnotationStart Expression expressionAnnotationEnd

UnaryMessageSend := NormalUnaryMessageSend | AnnotatedUnaryMessageSend
	
NormalUnaryMessageSend = 
	UnaryMessageReceiver UnaryMessage ~";" -- message
	| Operand -- base
	
AnnotatedUnaryMessageSend =
	expressionAnnotationStart UnaryMessageSend expressionAnnotationEnd

BinaryMessageSend := NormalBinaryMessageSend | AnnotatedBinaryMessageSend
	
NormalBinaryMessageSend = 
	BinaryMessageReceiver BinaryMessage?
	
AnnotatedBinaryMessageSend =
	expressionAnnotationStart BinaryMessageSend expressionAnnotationEnd
	
KeywordMessageSend := NormalKeywordMessageSend | AnnotatedKeywordMessageSend 
	
NormalKeywordMessageSend = 
	KeywordMessageReceiver KeywordMessageSegment*
	
AnnotatedKeywordMessageSend =
	expressionAnnotationStart KeywordMessageSend expressionAnnotationEnd

Operand := NormalOperand | AnnotatedOperand

NormalOperand = 
	Literal
	| Reference
	| NestedExpression

AnnotatedOperand =
	expressionAnnotationStart Operand expressionAnnotationEnd
	
Statement := NormalStatement | AnnotatedStatement

NormalStatement = 
	AssignmentOperation* Expression
	
AnnotatedStatement = 
	expressionAnnotationStart Statement expressionAnnotationEnd	

MessageChain := NormalMessageChain | AnnotatedMessageChain
 
NormalMessageChain =
	KeywordMessage
	| BinaryMessage  
	| UnaryMessage 

AnnotatedMessageChain = expressionAnnotationStart MessageChain expressionAnnotationEnd
 
comment := 
	~"\"<" "\"" (~"\"" (any | " " | "\n"))* "\""

expressionAnnotationStart =
	"\"<" space* ~"/" space* AnnotationInformation space* ">\""
	
expressionAnnotationEnd = 
	"\"</" space* Operand space* ">\""

}'