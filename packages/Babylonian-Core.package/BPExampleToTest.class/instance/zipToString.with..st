helper
zipToString: anArrayOfNames with: anArrayOfParameters
	"Private"
	
	self assert: [anArrayOfNames size = anArrayOfParameters size].
	
	^ (anArrayOfNames collectWithIndex: [:methodPart :i | 
			'{1}: {2}' format: {
				methodPart. 
				anArrayOfParameters at: i}])
		joinSeparatedBy: ' '