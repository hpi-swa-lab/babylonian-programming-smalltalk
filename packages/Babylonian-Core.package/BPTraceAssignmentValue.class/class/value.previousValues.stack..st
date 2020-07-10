instance creation
value: anObject previousValues: variableAndValuesTuples stack: arrayOfContexts
			
	^ (self value: anObject stack: arrayOfContexts)
		previousValues: variableAndValuesTuples;
		yourself