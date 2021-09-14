tests-minimizing-collections
testMiniReceiverIsADictionary
	
	| receiver |
	receiver := Dictionary new
		add: 1->2;
		add: 2->3;
		add: 3->4;
		yourself.
	self
		runCollection: receiver
		method: #add:
		class: Dictionary
		arguments: {4->5}.