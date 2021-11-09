tests
testNamedExampleInstanceMethod
	
	self assert: (SystemNavigation default allExampleInstanceMethods anySatisfy: [:methodReference | 
		methodReference compiledMethod = (BPEuropeanFlag class >> #blueStar)]).