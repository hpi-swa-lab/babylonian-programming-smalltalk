toolbuilder
initializeEvents

	model 
		when: #doubleClicked 
		evaluate: [:entry | (entry respondsTo: #methodReference) ifTrue: [
				self triggerEvent: #browseMethod with: entry methodReference]].
	model
		when: #entryClicked
		evaluate: [:entry | (entry respondsTo: #senderMethodReference) ifTrue: [
				self triggerEvent: #highlightSend withArguments: {entry senderMethodReference . entry senderPC}]].