tracing
runSetUpWith: aState
	
	| result |
	self setUpScript ifNotNil: [
		result := Compiler evaluate: self setUpScript notifying: aState.
		result isSymbol ifTrue: [
			self method methodClass perform: result]]