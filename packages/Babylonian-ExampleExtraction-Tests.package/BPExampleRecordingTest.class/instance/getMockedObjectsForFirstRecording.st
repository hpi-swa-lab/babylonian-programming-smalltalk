helpers
getMockedObjectsForFirstRecording
	
	| mockTreeReceiverAndArguments |
	
	mockTreeReceiverAndArguments := self getMockTreesForFirstRecording.
	
	^ {mockTreeReceiverAndArguments first createMinimalObject. mockTreeReceiverAndArguments second collect: [:mockTree | mockTree createMinimalObject]}