private
handlerBlockFor: message

	^ message isBlock
		ifTrue: [message]
		ifFalse: [[:ex | [ex pass] valueSupplyingAnswer: message]]