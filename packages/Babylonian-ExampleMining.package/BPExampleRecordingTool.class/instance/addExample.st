recording
addExample

	self selectedRecording
		ifNil: [UIManager default inform: 'no recording selected'.
			^ self].

	self addExampleWith: self selectedRecording first copy and: self selectedRecording second copy.
	self informRequestor