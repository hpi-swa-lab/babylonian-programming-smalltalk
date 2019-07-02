private
compileInstrumentedVersionOf: aCue

	| instrumentedMethod newCode results |
	[newCode := self rewrite: aCue sourceStream contents asBPSource asString.
	instrumentedMethod := aCue getClass compile: newCode.
	results := ((aCue getClass >> instrumentedMethod) bpExamples collect: [:example | example trace]).
	(aCue getClass >> instrumentedMethod) baseMethod propertyValueAt: #bpTrace put: results] 
		forkAt: Processor userBackgroundPriority