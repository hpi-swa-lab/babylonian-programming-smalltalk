tracing
runTearDownWith: aState
	
	| result |
	self tearDownScript ifNotNil: [
		result := Compiler evaluate: self tearDownScript notifying: aState.
		result isSymbol ifTrue: [
			self method methodClass perform: result]]