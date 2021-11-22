accessing
belongingAnnotationId

	"We save the probe's id in which the value is displayed at so we can use the back reference to extract information about the probe which may describe its trace values.
	For example, a probe's label may describe the semantic context of its values (see BPSwimlane >> #visualizeLineFor:)"
	^ belongingAnnotationId