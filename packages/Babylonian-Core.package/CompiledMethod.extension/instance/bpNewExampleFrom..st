*Babylonian-Core
bpNewExampleFrom: anExampleClass
	
	"This is were new examples are created. The other place where examples come to be is CompiledMethod>>#bpExamples"
	| newExample newExampleName |
	newExampleName := 'some example ' , 100 random.
	newExample := (anExampleClass newFor: self)
		exampleName: newExampleName;
		yourself.

	self bpExamples add: newExample.
	self bpExamples changed: #bpExamples.
	
	^ newExample