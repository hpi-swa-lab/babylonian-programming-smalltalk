helper
combineMethod: aMethodString withParameters: aParameterArray
	"zips the method string together with parameters. 
	example: combineMethod: 'do:with:' withParameters: #(2 3) --> 'do: 2 with: 3'"
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