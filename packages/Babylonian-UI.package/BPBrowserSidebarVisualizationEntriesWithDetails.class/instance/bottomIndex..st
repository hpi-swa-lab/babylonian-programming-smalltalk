priv toolbuilder (do not overwrite)
bottomIndex: aNumber
	
	(aNumber == 0 or: [self bottomCanSelect: (self bottomEntries at: aNumber)]) ifTrue: [
		bottomIndex := aNumber.
		self changed: #bottomIndex]