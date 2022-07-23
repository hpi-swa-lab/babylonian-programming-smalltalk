rules
AnnotatedArgument: aNode startTag: startTag actualArgument: argument endTag: endTag
	"Analogous to AnnotatedNode:... but includes converting the annotation from a probe
	to an argument probe."
	self preserveCurrentAnnotationDuring: [
		self value: startTag. "This will set the currentAnnotation."
		currentAnnotation isProbe ifTrue: [
			currentAnnotation := currentAnnotation asArgumentProbe.
			currentAnnotation argumentName: argument interval contents.].
		self initializeAnnotationGiven: aNode from: startTag.	
		annotations add: currentAnnotation].

	self value: argument.