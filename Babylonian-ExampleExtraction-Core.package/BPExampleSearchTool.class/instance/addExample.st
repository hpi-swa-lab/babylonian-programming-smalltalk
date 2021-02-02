examples
addExample
	
	| example |
	self selectedSearchResult ifNil: [UIManager default inform: 'no recording selected'.
	 ^ self].

	example := self method bpNewExampleFrom: BPExtractedFromTestExample.
	example
		extractedClassName: self selectedSearchResult key;
		extractedMethodSelector: self selectedSearchResult value.