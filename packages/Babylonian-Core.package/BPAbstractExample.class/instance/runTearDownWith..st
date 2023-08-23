tracing
runTearDownWith: aState
	
	| result |
	#bpInstrumented withoutLayerDo: [
		self tearDownScript ifNotNil: [
			result := Compiler evaluate: self tearDownScript notifying: aState.
			result isSymbol ifTrue: [
				self method methodClass perform: result]]]