priv toolbuilder (do not overwrite)
topIndex: aNumber
	
	(aNumber == 0 or: [self topCanSelect: (self topEntries at: aNumber)]) ifTrue: [
		topIndex := aNumber.
		self changed: #topIndex.
		self changed: #bottomLabels.
		self changed: #bottomBackgroundColor:]