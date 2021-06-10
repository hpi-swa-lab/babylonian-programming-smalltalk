grammar rules
AnnotationInformation: aNode with: tag and: keywordMessage
	
	currentAnnotation := BPAnnotation for: tag interval contents withBlanksTrimmed.
	annotationExtraction
		currentAnnotation: currentAnnotation;
		value: keywordMessage.