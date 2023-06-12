accessing
context: aBPProbeLogContext
	
	context ifNotNil: [context removeDependent: self].
	context := aBPProbeLogContext.
	context addDependent: self.