running
tearDown

	self class removeSelector: method selector.
	self class removeSelector: method selector.
	browser currentWindow ifNotNil: [browser currentWindow delete].