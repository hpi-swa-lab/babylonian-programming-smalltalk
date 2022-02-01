state
untrack: aBPExample

	self countAllOut: aBPExample traceValues.
	aBPExample removeDependent: self.
	exampleToIgnoredAnnotations removeKey: aBPExample uniqueIdentifier. 