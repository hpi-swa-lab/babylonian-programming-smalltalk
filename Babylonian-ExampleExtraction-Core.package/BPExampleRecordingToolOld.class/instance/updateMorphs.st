private - ui
updateMorphs
	
	self removeAllMorphs.
	self
		layoutPolicy: TableLayout new;
		addRecordingButton;
		addSelectionWidget;
		addMorphBack: (self explorerMorphFor: self selectedRecording);
		addAddExampleButton