*Babylonian-UI-private
doAddLinkedAnnotationsFor: anInstanceVariableProbe

	| allSenderMethods |
	allSenderMethods := (self systemNavigation 
		allAccessesTo: anInstanceVariableProbe variableName
		from: (Smalltalk bindingOf: (anInstanceVariableProbe assignedClassName asSymbol)) value).
		
	allSenderMethods collect: [:aMethodReference |  self doAddLinkedAnnotationsFor: anInstanceVariableProbe in: aMethodReference].