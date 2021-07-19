mocking
instVarAccessRead: context

	^ (context method abstractBytecodeMessageAt: context pc) printString includesSubstring: 'pushReceiverVariable:'