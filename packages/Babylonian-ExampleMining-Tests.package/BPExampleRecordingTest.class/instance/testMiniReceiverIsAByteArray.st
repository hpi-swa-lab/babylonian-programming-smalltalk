tests-minimizing-collections
testMiniReceiverIsAByteArray
	
	self
		runCollection: #[1 2 3]
		method: #asByteArray
		class: ByteArray
		arguments: {}.