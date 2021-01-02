helper
combineMethod: aMethodString with: anArrayOfParameters
	"zips aMethodString together with anArrayOfParameters. 
	example: combineMethod: 'do:with:' with: #(2 3) --> 'do: 2 with: 3'"
	
	| methodParts |
	methodParts := (aMethodString splitBy: ':') allButLast.
	^ methodParts isEmpty 
		ifTrue: [aMethodString]
		ifFalse: [self zipToString: methodParts with: anArrayOfParameters]