minimizing
instVarWriteAccess: context

	^ (context method abstractBytecodeMessageAt: context pc) printString includesSubstring: 'popIntoReceiverVariable:'