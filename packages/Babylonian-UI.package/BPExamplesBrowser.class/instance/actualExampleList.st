accessing
actualExampleList
	
	^ exampleList ifNil: [
		exampleList := self selectedPackage 
							ifNotNil: [:p | p methods gather: [:m | m compiledMethod bpExamples]]
							ifNil: [#()].
		exampleList := exampleList sorted: [:e | 
			self flag: #todo. "Sorry for that... too lazy to do it correctly right now,
			writing browsers is boring --pre"
			(e isActive ifTrue: ['aaa'] ifFalse: ['xxx']) , e exampleName]]