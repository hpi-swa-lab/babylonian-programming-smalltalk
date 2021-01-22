accessing
selectionUninstrumented: aNumber
	
	aNumber ~= 1 ifTrue: [
		selectionUninstrumented := aNumber.
		self changed: #selectionUninstrumented.
		self changed: #hasUninstrumentedSelection]