public access
compile: aCue ifFail: failBlock 

	| originalMethod |
	originalMethod := super compile: aCue ifFail: failBlock.
	
	(self methodSourceRequiresBPLayers: aCue sourceStream contents asString) ifTrue: [
		self compileInstrumentedVersionOf: aCue].
									
	^ originalMethod