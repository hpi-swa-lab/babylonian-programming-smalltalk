helper
combineMethod: aMethodString withParameters: aParameterArray
	| methodParts |
	
	methodParts := aMethodString splitBy: ':'.
	
	^ (methodParts size = aParameterArray size) 
		ifTrue: [
			methodParts
				allButLast
				collectWithIndex: [:methodPart :i | 
					'{1}: {2} ' format: {
						methodPart. 
						aParameterArray at: i}]
			join]
		ifFalse: ['']