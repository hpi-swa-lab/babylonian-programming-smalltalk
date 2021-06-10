instance creation
value: aValue identityHash: tracedValueIdentityHash stack: aCollection
	
	^ self new
		tracedValue: aValue;
		tracedValueIdentityHash: tracedValueIdentityHash;
		stack: aCollection;
		yourself 