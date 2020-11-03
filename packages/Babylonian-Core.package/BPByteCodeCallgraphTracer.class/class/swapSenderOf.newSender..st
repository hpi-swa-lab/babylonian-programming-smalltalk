tracing
swapSenderOf: context newSender: newSender
	
	
	self value ifNotNil: [:t | self value: nil during: [t swapSenderOf: context newSender: newSender]]