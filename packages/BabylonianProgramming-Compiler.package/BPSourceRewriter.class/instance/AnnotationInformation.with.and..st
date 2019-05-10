grammar rules
AnnotationInformation: aNode with: tag and: keywordMessage

	currentAnnotation tag: tag interval contents.
	keywordMessageExtraction
		currentAnnotation: currentAnnotation;
		value: keywordMessage