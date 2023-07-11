minimizing
instVarWriteAccess: aContext

	^ (self instVarMessage: aContext) printString includesSubstring: 'popIntoReceiverVariable:'