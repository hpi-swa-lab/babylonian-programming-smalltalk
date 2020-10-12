instance creation
value: anObject identityHash: identityHash previousValues: variableAndValuesTuples stack: arrayOfContexts
	
	^ (self value: anObject identityHash: identityHash stack: arrayOfContexts)
		previousValues: variableAndValuesTuples;
		yourself