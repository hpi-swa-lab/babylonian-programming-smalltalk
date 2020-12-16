adding examples
createAndAddNewExampleFrom: aClass
	
	"This is were new examples are created. The other place were examples come to be is CompiledMethod>>#bpExamples"
	
	| newExample newExampleName compiledMethod |
	compiledMethod := self compiledMethod.
	newExampleName := 'some example ' , 100 random.
	newExample := (aClass newFor: compiledMethod)
		exampleName: newExampleName;
		yourself.
		
	compiledMethod bpExamples add: newExample.
		
	self addNewExampleAnnotation: (BPExampleAnnotation 
		newFor: newExample 
		in: self containingBrowser methodReference).
		
	self codeContentChanged.
	
	^ newExample