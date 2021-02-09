examples
methodAsText
	
	| selectedMethod |
	selectedMethod := self searchResults at: self searchResultIndex ifAbsent: [^ ''].
	^ ((Smalltalk at: selectedMethod key asSymbol) >> selectedMethod value) methodNode sourceText asString