as yet unclassified
subject: anObject
	
	subject := anObject.
	
	subjectInstVars := Dictionary new.
	self subject class allInstVarNames do: [:instVarName |
		subjectInstVars at: instVarName put: (self subject instVarNamed: instVarName)].
	