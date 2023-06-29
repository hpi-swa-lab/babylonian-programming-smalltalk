accessing
pathForTraceValue: aTraceValue

	^ self controlFlowPathAt: aTraceValue ifAbsentPut: [
		self determineControlFlowPathFor: aTraceValue]