serialized grammar
serializedGrammar
	
^ 'BPSmalltalk <: OhmExplicitSendsSmalltalk {

AnnotationInformation = Operand KeywordMessage?

Expression := NormalExpression | AnnotatedExpression

NormalExpression = 
	Operand CascadedMessages -- operandCascade
	| UnaryMessageReceiver CascadedMessages -- unaryCascade
	| BinaryMessageReceiver CascadedMessages -- binaryCascade
	| KeywordMessageSend
	
AnnotatedExpression =
	expressionAnnotationStart Expression expressionAnnotationEnd

UnaryMessageSend := NormalUnaryMessageSend | AnnotatedUnaryMessageSend
	
NormalUnaryMessageSend = 
	UnaryMessageReceiver UnaryMessage -- message
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
 
Argument = 
	AnnotatedArgument | NormalArgument

NormalArgument = 
	bindableIdentifier
	
AnnotatedArgument = 
	expressionAnnotationStart NormalArgument expressionAnnotationEnd

KeywordMethodHeaderSegment :=
	keyword Argument
	
BinaryMethodHeader :=
	binaryMessageSelector Argument
	
comment := 
	~("\"<bp" | "\"</bp") "\"" (~"\"" (any | " " | "\n"))* "\""

expressionAnnotationStart =
	"\"<" space* ~"/" &"bp" space* AnnotationInformation space* ">\""
	
expressionAnnotationEnd = 
	"\"</" space* &"bp" Operand space* ">\""

}'