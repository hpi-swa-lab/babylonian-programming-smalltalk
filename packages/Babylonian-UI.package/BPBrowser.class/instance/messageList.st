message list
messageList
	
	^ super messageList reject: [:label |
		label asString includesSubstring: '(bpInstrumented)']