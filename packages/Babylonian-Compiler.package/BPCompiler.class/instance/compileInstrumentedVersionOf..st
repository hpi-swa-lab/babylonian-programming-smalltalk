private
compileInstrumentedVersionOf: aCue

	| originalCode parseResult |
	originalCode := aCue sourceStream contents asBPSource asString.
	parseResult := self parse: originalCode.
	
	parseResult succeeded 
		ifTrue: [
			self backgroundCompileInstrumentedVersionOf: aCue basedOn: parseResult.
			^ true]
		ifFalse: [^ false]
	
	
	
	