*Babylonian-Core
asBPSource
	
	| resultString |
	resultString := String streamContents: [:stream |
		(BPTextReadWriter on: stream) nextPutText: self].
	
	"Sanitize the layouting of the examples to avoid spilling whitespace and to align the examples"
	^ (resultString lines collect: [:l | 
		(l withBlanksTrimmed beginsWith: '<exampleNamed:')
			ifTrue: [String tab , l withBlanksTrimmed]
			ifFalse: [l]]) joinSeparatedBy: String cr 