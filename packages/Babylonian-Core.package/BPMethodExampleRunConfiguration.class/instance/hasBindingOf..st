requestor compatibility
hasBindingOf: aString
	
	^ (arguments includesKey: aString asSymbol)
		or: [aString = #self
		or: [super hasBindingOf: aString]]