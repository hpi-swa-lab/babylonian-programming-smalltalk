executing
runTearDown
	
	| result |
	self tearDownScript ifNotNil: [
		result := Compiler evaluate: self tearDownScript.
		result isSymbol ifTrue: [
			self method methodClass perform: result]]