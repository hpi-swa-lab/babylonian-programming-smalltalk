tests
testStylerSetsAnchorForWorldExample

	| formattedSourceCode originalSourceCode attributes |
	originalSourceCode := 'method
	<worldExampleNamed: ''world example''>
"<bpReplace for: ''example 1'' with: [10]>"2 + 3"</bpReplace>"' asText.
	styler
		classOrMetaClass: self class; 
		selectedMethod: (self class>>#methodWithWorldExample) methodReference.
	formattedSourceCode := styler format: originalSourceCode.
	
	self deny: (formattedSourceCode asString includesSubstring: '<worldExampleNamed: ''world example''>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: $<).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPExamplesMorph).