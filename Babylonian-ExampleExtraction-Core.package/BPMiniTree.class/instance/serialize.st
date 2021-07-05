serialization
serialize
	
	| id serialization |
	serialization := ''.
	id := 1.
	forest objectMockMapping valuesDo: [ :mockTemplate |
		serialization := serialization, (mockTemplate serializeWith: id)].
	
	^ serialization