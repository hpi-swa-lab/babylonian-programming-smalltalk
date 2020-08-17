serialization
startTag

	^  '"<bpAssert id: {1} for: {2} that: {3}>"' format: {
		self id. self exampleName printString. self assertion}