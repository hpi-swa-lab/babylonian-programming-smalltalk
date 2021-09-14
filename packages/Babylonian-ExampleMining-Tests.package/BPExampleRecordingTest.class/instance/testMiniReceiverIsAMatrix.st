tests-minimizing-collections
testMiniReceiverIsAMatrix
	
	| receiver |
	receiver := (Matrix rows: 3 columns: 3 contents: #(
		 1 2 3
		 4 5 6
		 7 8 9
	)).
	
	self
		runCollection: receiver
		method: #anyOne
		class: Matrix
		arguments: {}.