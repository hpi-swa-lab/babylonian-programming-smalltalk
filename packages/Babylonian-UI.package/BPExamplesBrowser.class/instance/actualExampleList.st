accessing
actualExampleList
	
	^ exampleList ifNil: [
		exampleList := self selectedPackage 
							ifNotNil: [:aPackage | aPackage methods gather: [:aMethod | aMethod compiledMethod bpExamples]]
							ifNil: [#()].
		exampleList := exampleList sorted: [:anExample | 
			self flag: #todo. "Sorry for that... too lazy to do it correctly right now,
			writing browsers is boring --pre"
			(anExample isActive 
				ifTrue: ['aaa'] 
				ifFalse: ['xxx']) , (self exampleLabelFor: anExample)] ascending]