initialization
initializeSubmorphsIncluding: anIconicButton

	self addAllMorphsBack: {
			(anIconicButton extent: self height@self height).
			self newLabelMorph. 
			self newSpacer.
			(self newRemoveButton extent: self height@self height) }