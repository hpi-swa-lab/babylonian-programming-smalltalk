annotation processing
AnnotatedNode: aNode startTag: startTag actualNode: actualNode endTag: endTag

	self preserveCurrentAnnotationDuring: [
		"This will set the currentAnnotation."
		self value: startTag.	
		self initializeAnnotationGiven: aNode from: startTag.
		annotations add: currentAnnotation].
	
	self value: actualNode