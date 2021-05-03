*Babylonian-Core-Callgraph-ByteCode
value: anObject during: aBlock inProcess: aProcess
	
	| p oldValue outerScopeWasDynamic |
	p := aProcess.
	outerScopeWasDynamic := true.
	oldValue := p
		environmentAt: self
		ifAbsent: [outerScopeWasDynamic := false. nil].
	^[
		p environmentAt: self put: anObject.
		aBlock value ] 
			ensure: [ outerScopeWasDynamic
				ifTrue: [p environmentAt: self put: oldValue]
				ifFalse: [p environmentRemoveKey: self ifAbsent: []] ].