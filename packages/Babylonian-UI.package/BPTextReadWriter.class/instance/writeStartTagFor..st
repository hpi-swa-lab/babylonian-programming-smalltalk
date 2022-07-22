writing
writeStartTagFor: aTextAttribute
	
	aTextAttribute anchoredMorph isExamples
		ifTrue: [self delayWritingExampleMorphTags: aTextAttribute anchoredMorph]
		ifFalse: [self nextPutAll: aTextAttribute anchoredMorph startTag].
	