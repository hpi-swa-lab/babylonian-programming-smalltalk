tests
testDeleteMethod

	[browser removeMessage] valueSupplyingAnswer: 'Yes, remove it'.
	self deny: (self respondsTo: #mockMethod).
