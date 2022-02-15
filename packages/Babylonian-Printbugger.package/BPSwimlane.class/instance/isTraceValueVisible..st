private
isTraceValueVisible: aTraceValue

	 ^ ((context ignoredAnnotationsOf: example) includes: (aTraceValue belongingAnnotationId)) not
	