grammar rules
AnnotationInformation: aNode with: tag and: keywordMessage

	currentAnnotation := BPAnnotation for: tag interval contents withBlanksTrimmed.
	keywordMessageExtraction
		currentAnnotation: currentAnnotation;
		value: keywordMessage