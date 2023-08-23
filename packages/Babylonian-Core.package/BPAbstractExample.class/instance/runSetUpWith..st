tracing
runSetUpWith: aState
	
	| result |
	#bpInstrumented withoutLayerDo: [
		self setUpScript ifNotNil: [
			result := Compiler evaluate: self setUpScript notifying: aState.
			result isSymbol ifTrue: [
				self method methodClass perform: result]]]