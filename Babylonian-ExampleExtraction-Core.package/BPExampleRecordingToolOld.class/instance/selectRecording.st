as yet unclassified
selectRecording
	
	self selectedRecording: (UIManager default
		chooseFrom: (self recordings collectWithIndex: [:record :index | record first asString, index asString])
		values: (self recordings)).
	self updateMorphs 