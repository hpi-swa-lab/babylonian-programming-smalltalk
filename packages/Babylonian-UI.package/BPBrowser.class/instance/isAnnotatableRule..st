private
isAnnotatableRule: aRuleName

	^ #(UnaryMessageSend BinaryMessageSend KeywordMessageSend Expression Statement Operand) includes: aRuleName