testing
isTraceValueVisible

	 ^ ((context ignoredAnnotationsOf: containingSwimlane example) includes: (traceValue belongingAnnotationId)) not