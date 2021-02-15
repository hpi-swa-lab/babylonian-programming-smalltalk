as yet unclassified
class: theClass selector: theSelector blockIdx: theBlockIdx invocationCount: theInvocationCount senderPC: pc senderMethod: aMethod
	
	class := (theClass endsWith: ' class') 
		ifTrue: [(Smalltalk at: (theClass splitBy: ' ') first asSymbol) class] 
		ifFalse: [Smalltalk at: theClass asSymbol].
	selector := theSelector asSymbol.
	blockIndex := theBlockIdx.
	invocationCount := theInvocationCount.
	senderPC := pc.
	senderMethod := aMethod.