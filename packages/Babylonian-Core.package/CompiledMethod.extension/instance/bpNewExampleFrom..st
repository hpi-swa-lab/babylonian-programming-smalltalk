*Babylonian-Core
bpNewExampleFrom: anExampleClass
	
	"This is were new examples are created. The other place where examples come to be is CompiledMethod>>#bpExamples"
	| newExample newExampleName |
	newExampleName := 'some example ' , 100 random.
	newExample := (anExampleClass newFor: self)
		exampleName: newExampleName;
		yourself.

	BPExamples value add: newExample.
	(self bpExamples includes: newExample) ifFalse: [
		"The intermediate calculation of bpExamples might
		have already added the example to the collection."
		self bpExamples add: newExample.
		self bpExamples changed: #bpExamples.].
	
	^ newExample