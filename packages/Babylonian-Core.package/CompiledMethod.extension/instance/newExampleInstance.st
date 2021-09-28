*Babylonian-Core
newExampleInstance
	
	self isExampleInstanceMethod ifFalse: [self error: 'Only works on example instance methods']. 
	^ self valueWithReceiver: self methodClass theNonMetaClass arguments: #()