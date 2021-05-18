serialization
serialize
	
	| id serialization |
	serialization := ''.
	id := 1.
	objectMockMapping valuesDo: [ :mockTemplate |
		serialization := serialization, (mockTemplate serializeWith: id)].
	
	^ serialization