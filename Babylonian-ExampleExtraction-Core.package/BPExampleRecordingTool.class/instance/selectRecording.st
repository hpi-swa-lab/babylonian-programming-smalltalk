as yet unclassified
selectRecording
	
	self selectedRecording: (UIManager default
		chooseFrom: (self recordings collectWithIndex: [:record :index | record extension receiverObject asString, index asString])
		values: (self recordings collect: [:record | record extension])).
	self updateMorphs 