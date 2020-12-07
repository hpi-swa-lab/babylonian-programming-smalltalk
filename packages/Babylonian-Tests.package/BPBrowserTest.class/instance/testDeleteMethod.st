tests
testDeleteMethod

	[browser removeMessage] valueSupplyingAnswer: 'Remove it'.
	self deny: (self respondsTo: #mockMethod).