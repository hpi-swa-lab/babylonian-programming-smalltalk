as yet unclassified
configureFor: anExample
	
	| mockContext mockReceiverAndArguments |
	mockContext := BPMiniContext example: anExample.
	self method: anExample method.
	receiver := mockContext receiver.
	arguments := mockContext arguments.
	mockContext createMockForest.
	mockReceiverAndArguments := mockContext minimalObjects.
	mockReceiver := mockReceiverAndArguments first.
	mockArguments := mockReceiverAndArguments second.