helper
combineMethod: aMethodString withParameters: aParameterArray
	| methodParts |
	
	methodParts := (aMethodString splitBy: ':') allButLast.
	
	^ (methodParts size = aParameterArray size) 
		ifTrue: [
			(methodParts
				collectWithIndex: [:methodPart :i | 
					'{1}: {2}' format: {
						methodPart. 
						aParameterArray at: i}])
			joinSeparatedBy: ' ']
		ifFalse: ['']