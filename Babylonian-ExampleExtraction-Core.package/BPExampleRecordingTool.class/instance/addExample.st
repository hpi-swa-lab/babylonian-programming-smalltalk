recording
addExample
	
	     
	self selectedRecording ifNil: [UIManager default inform: 'no recording selected'.
	 ^ self].
	
	self addExampleWith: self selectedRecording first and: self selectedRecording second.
	"self addExampleReceiverMock."
	
	self informRequestor.