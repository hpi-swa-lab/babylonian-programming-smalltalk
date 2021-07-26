examples
addExample
	
	| example |
	self selectedSearchResult
		ifNil: [UIManager default inform: 'no test selected'.
	 		^ self].

	example := self method bpNewExampleFrom: BPTestCaseExample.
	example
		testCaseClassFrom: self selectedSearchResult key;
		methodSelector: self selectedSearchResult value.
		
	self informRequestor.