instance creation
value: anObject previousValues: variableAndValuesTuples stack: arrayOfContexts methodReference: aMethodReference
			
	^ (self value: anObject stack: arrayOfContexts methodReference: aMethodReference)
		previousValues: variableAndValuesTuples;
		yourself