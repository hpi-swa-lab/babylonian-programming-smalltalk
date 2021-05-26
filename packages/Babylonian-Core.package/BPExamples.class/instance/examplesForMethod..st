accessing
examplesForMethod: aCompiledMethod

	| methodReferenceString |
	methodReferenceString := aCompiledMethod reference.
	^ self examples select: [:e | e method reference = methodReferenceString]