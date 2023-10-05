private
compileInstrumentedVersionOf: aCue
	
	| originalCode parseResult |
	"We do not serialize the examples into the instrumented method as
	they only 'live' in the base method."
	originalCode := aCue sourceStream contents asBPSourceWithoutExamples.
	parseResult := self parse: originalCode.
	
	parseResult succeeded 
		ifTrue: [
			self backgroundCompileInstrumentedVersionOf: aCue basedOn: parseResult.
			^ true]
		ifFalse: [^ false].
	
	
	
	