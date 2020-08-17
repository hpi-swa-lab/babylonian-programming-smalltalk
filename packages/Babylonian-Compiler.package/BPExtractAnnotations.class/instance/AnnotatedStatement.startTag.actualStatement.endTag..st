rules
AnnotatedStatement: aNode startTag: startTag actualStatement: statement endTag: endTag
	"Analogous to AnnotatedNode:... but includes converting the annotation from a probe
	to an assignment probe."	
		
	self preserveCurrentAnnotationDuring: [
		"This will set the currentAnnotation."
		self value: startTag.
	
		"This is fine, as a statement is only parsed as annotated if there is an assignment in there. 
		Otherwise the enclosed Expression in Annotated"
		currentAnnotation isProbe ifTrue: [
			currentAnnotation := currentAnnotation asAssignmentProbe].

		self initializeAnnotationGiven: aNode from: startTag.	
		annotations add: currentAnnotation].
	
	self value: statement