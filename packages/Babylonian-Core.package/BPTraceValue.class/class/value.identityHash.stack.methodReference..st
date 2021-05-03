instance creation
value: aValue identityHash: tracedValueIdentityHash stack: aCollection methodReference: aMethodReference
	
	^ self new
		tracedValue: aValue;
		tracedValueIdentityHash: tracedValueIdentityHash;
		stack: aCollection;
		methodReference: aMethodReference;
		yourself 