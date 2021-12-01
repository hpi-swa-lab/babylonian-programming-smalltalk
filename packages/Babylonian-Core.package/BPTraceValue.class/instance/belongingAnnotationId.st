accessing
belongingAnnotationId

	"We save the annotation's id in which the value is displayed at so we can use the back reference to extract information about the annotation which may describe its trace values.
	For example, an annotation's label may describe the semantic context of its values (see BPSwimlane >> #visualizeLineFor:)"
	^ belongingAnnotationId