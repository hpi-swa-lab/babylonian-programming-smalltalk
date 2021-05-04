executing
runSetUpWith: aState
	
	| result |
	self setUpScript ifNotNil: [
		result := Compiler evaluate: self setUpScript.
		result isSymbol ifTrue: [
			self method methodClass perform: result]]