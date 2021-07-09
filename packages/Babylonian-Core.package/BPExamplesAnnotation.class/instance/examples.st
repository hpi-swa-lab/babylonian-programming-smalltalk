accessing
examples
	
	| compiledMethod |
	compiledMethod := self methodReference compiledMethod.
	^ compiledMethod 
		ifNotNil: [(BPExamples value examplesForMethod: compiledMethod) asArray]
		ifNil: ["Method was removed by now, so there are not examples" #()]