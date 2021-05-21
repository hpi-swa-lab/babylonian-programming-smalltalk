adding examples
addAsTestCaseExample
	
	| class example method |
	method := self containingBrowser compiledMethod.
	class := method methodClass.
	example := method bpNewExampleFrom: BPTestCaseExample.
	example
		testCaseClass: class;
		methodSelector: method selector.