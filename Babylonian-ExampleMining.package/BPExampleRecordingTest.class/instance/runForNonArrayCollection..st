tests-minimizing-collections
runForNonArrayCollection: aCollectionClass

	| receiver |

	receiver := aCollectionClass new
		add: 1;
		add: 2;
		add: 3;
		yourself.

	self
		runCollection: receiver
		method: #add:
		class: aCollectionClass
		arguments: {4}