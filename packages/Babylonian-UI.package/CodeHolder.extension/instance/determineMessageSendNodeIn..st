*Babylonian-UI-tracing
determineMessageSendNodeIn: anInterval

	| nodes messageSendRuleNames lowestMessageSend |
	self bpEnsureContentsAndSelectedMessage.
	nodes := currentCompiledMethod bpSourceMap at: anInterval start.
	messageSendRuleNames := #(ExpressionOperandCascade ExpressionUnaryCascade ExpressionBinaryCascade UnaryMessageSend BinaryMessageSend KeywordMessageSend).
	^ lowestMessageSend := nodes reversed
		detect: [:node | messageSendRuleNames includes: node ruleName] 
		ifNone: [nil].
	
	