tests
testUnstyledTextForMethodWithoutExample
	
	| formattedSourceCode originalSourceCode |
	originalSourceCode := 'methodWithoutExample
	^ 2 + 3' asText.
	styler selectedMethod: (BPStylerTest>>#methodWithoutExample) methodReference.
	formattedSourceCode := styler format: originalSourceCode.
	self assert: originalSourceCode equals: (styler unstyledTextFrom: formattedSourceCode).