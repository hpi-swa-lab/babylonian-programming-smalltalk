accessing
annotation: anObject
	
	| result |
	result := super annotation: anObject.
	self height: self methodReference compiledMethod bpExamples size * (TextMorph new contents: 'a'; yourself) height.
	^ result
	