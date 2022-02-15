state
untrack: aBPExample

	self countAllOut: aBPExample traceValues.
	aBPExample removeDependent: self.
	
	aBPExample isNilExample ifFalse: [exampleToIgnoredAnnotations removeKey: aBPExample uniqueIdentifier]