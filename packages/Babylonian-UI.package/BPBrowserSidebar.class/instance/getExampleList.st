example selection
getExampleList
	
	^ "BPExample allSubInstances"BPActiveExamples value examples sorted: [:a :b | (a isActive and: [b isActive not]) 
		ifTrue: [true]
		ifFalse: [a exampleName < b exampleName]]