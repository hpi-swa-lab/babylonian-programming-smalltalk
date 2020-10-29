tracing
swapSenderOf: context newSender: newSender
	
	
	self value ifNotNil: [:t | t swapSenderOf: context newSender: newSender]