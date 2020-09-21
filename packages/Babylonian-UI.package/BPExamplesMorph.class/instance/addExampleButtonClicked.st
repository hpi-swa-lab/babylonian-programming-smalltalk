adding examples
addExampleButtonClicked
	"This is were new examples are created. The other place were examples come to be is CompiledMethod>>#bpExamples"
	
	| newExample newExampleName compiledMethod |
	compiledMethod := self containingBrowser compiledMethod.
	newExampleName := 'some example ' , 100 random.
	newExample := (BPExample newFor: compiledMethod)
		exampleName: newExampleName;
		yourself.
		
	compiledMethod bpExamples add: newExample.
		
	self addNewExampleAnnotation: (BPExampleAnnotation 
		newFor: newExample 
		in: self containingBrowser methodReference).
		
	self codeContentChanged.