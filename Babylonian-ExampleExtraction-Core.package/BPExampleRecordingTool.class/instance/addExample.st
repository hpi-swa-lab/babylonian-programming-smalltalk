recording
addExample
	
	     
	self selectedRecording ifNil: [UIManager default inform: 'no recording selected'.
	 ^ self].
	
	self mockingPreference
		ifTrue: [self addExampleWithMocks]
		ifFalse: [self addExampleWithoutMocks].
	
	self informRequestor.