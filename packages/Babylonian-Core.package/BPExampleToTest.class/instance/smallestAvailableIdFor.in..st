helper
smallestAvailableIdFor: anExampleTestName in: aClass
	
	|occurenceCount|
	occurenceCount := 0.
	
	[occurenceCount := occurenceCount + 1] doWhileFalse: [
		self canBeCreated: anExampleTestName, occurenceCount asString in: aClass].
	^ occurenceCount