private
compileInstrumentedVersionOf: aCue noPattern: aBoolean
	
	| originalCode parseResult startingFrom |
	"We do not serialize the examples into the instrumented method as
	they only 'live' in the base method."
	originalCode := aCue sourceStream contents asBPSourceWithoutExamples.
	startingFrom := aBoolean 
			ifFalse: [#MethodDeclaration]
			ifTrue: [#KeywordMessageSend].
	
	parseResult := PEGParserBPSmalltalk new
		match: originalCode
		startingFrom: startingFrom.
	
	parseResult succeeded 
		ifTrue: [
			self 
				backgroundCompileInstrumentedVersionOf: aCue 
				basedOn: parseResult 
				noPattern: aBoolean.
			^ true]
		ifFalse: [^false].
	
	
	
	