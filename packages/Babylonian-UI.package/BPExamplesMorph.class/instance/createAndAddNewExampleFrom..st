adding examples
createAndAddNewExampleFrom: aClass
	| compiledMethod newExample | 
	compiledMethod := self containingBrowser compiledMethod.
	newExample := compiledMethod bpNewExampleFrom: aClass.