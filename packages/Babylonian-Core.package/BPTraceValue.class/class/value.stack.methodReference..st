instance creation
value: aValue stack: aCollection methodReference: aMethodReference

	^ self new
		tracedValue: aValue;
		stack: aCollection;
		methodReference: aMethodReference;
		yourself 