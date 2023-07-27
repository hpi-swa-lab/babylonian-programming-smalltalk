minimizing
instVarAccessRead: aContext

	^ (self instVarMessage: aContext) printString includesSubstring: 'pushReceiverVariable:'