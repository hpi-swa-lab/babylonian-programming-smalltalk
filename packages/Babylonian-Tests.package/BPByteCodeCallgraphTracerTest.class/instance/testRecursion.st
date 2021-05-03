as yet unclassified
testRecursion
	
	[
		BPByteCodeRewriter setup; instrumentClass: Integer selector: #factorial; enableTracingForClass: Integer selector: #factorial.

		self assertBlock: [3 factorial] generatesTrace: '
Integer >> factorial ctx: 1
	Integer >> factorial ctx: 2
		Integer >> factorial ctx: 3
			Integer >> factorial ctx: 4
			^ Integer >> factorial ctx: 4
		^ Integer >> factorial ctx: 3
	^ Integer >> factorial ctx: 2
^ Integer >> factorial ctx: 1'
	] ensure: [BPByteCodeRewriter uninstrumentClass: Integer selector: #factorial]