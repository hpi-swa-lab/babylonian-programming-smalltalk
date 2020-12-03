regression tests
testRegressionProbesExamplesReplacements01

	startRule := #MethodDeclaration.
	self shouldParse: 'binarySearch: anElement
	<exampleNamed: ''basic'' active: true self: ''BPSearchCollection newFrom: (1 to: 15)'' with: ''8''>                                   
	<exampleNamed: ''not found'' self: #numbersUpTo10 with: ''20''>               

	| index low high | 
	low := 1.  
	high := self size. 
 
	[ "<bpProbe id: 1550272>"high < low"</bpProbe>"] whileFalse: [
		index := "<bpReplace for: ''basic'' with: [10]>"high + low // 2"</bpReplace>".	 
		anElement < (self at: "<bpProbe id: 3156627>"index"</bpProbe>")
			ifTrue: [ high := index - 1 ]
			ifFalse: [
				anElement > (self at: index)
					ifTrue: [ low := index + 1 ]
					ifFalse: [ ^ "<bpProbe id: 5475766>"index"</bpProbe>" ]]].'