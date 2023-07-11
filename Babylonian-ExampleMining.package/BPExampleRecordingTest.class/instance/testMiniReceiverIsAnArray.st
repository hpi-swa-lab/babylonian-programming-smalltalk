tests-minimizing-collections
testMiniReceiverIsAnArray

	self
		runCollection: {#something. 2}
		method: #asArray
		class: Array
		arguments: {}