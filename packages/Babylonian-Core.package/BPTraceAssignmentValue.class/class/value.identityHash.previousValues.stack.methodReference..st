instance creation
value: anObject identityHash: identityHash previousValues: variableAndValuesTuples stack: arrayOfContexts methodReference: aMethodReference
	
	^ (self value: anObject identityHash: identityHash stack: arrayOfContexts methodReference: aMethodReference)
		previousValues: variableAndValuesTuples;
		yourself