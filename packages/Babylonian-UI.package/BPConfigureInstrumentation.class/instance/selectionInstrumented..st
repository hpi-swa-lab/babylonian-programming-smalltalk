accessing
selectionInstrumented: aNumber
	
	aNumber ~= 1 ifTrue: [
		selectionInstrumented := aNumber.
		self changed: #selectionInstrumented.
		self changed: #hasInstrumentedSelection]