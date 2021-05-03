as yet unclassified
menu: aMenuMorph
	
	aMenuMorph add: 'find next call to this method' action: #selectNextMethodCall.
	aMenuMorph add: 'find prev call to this method' action: #selectPrevMethodCall.
	
	blockIndex > 1 ifTrue: [
		aMenuMorph addLine.
		aMenuMorph add: 'find next call to this block' action: #selectNextBlockCall.
		aMenuMorph add: 'find prev call to this block' action: #selectPrevBlockCall.
		aMenuMorph addLine.
		aMenuMorph add: 'find next call to this block in same context' action: #selectNextBlockCallInSameContext.
		aMenuMorph add: 'find prev call to this block in same context' action: #selectPrevBlockCallInSameContext].
	
	aMenuMorph addLine.
	
	blockIndex > 1 ifTrue: [aMenuMorph add: 'find block exit' action: #selectCorrespondingBlockExit].
	aMenuMorph add: 'find method exit' action: #selectCorrespondingMethodExit.
	
	aMenuMorph addLine.
	aMenuMorph add: 'find common ancestor of all invocations' action: #findCommonAncestorOfAllInvocations.
	aMenuMorph add: 'find all procedures called by this invocation (recursively)' action: #selectChildMethodCalls.
	
	super menu: aMenuMorph