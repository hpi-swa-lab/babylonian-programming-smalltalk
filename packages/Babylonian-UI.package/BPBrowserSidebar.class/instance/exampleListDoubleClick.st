example selection
exampleListDoubleClick
	
	exampleListIndex > 0 ifTrue: [
		self triggerEvent: #browseMethod with: (self getExampleList at: exampleListIndex) method asCodeReference]