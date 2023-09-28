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
		ifFalse: [
			"das oben schlägt fehl, weil er keine methoddeclaration findet"
			"hier ist die cue kaputt, weil er keine class zuweisen kann. doch nochmal
			ne andere compile version, die speziell für editclass zurechtgeschnitten ist?"
			parseResult := PEGParserBPSmalltalk new
				match: originalCode
				startingFrom: #KeywordMessageSend.
			parseResult succeeded ifTrue: [self backgroundCompileInstrumentedVersionOf: aCue basedOn: parseResult.
			^ true] ifFalse: [^false]].
	
	
	
	