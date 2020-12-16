private - ui
addRecordingButton
	
	recordingButton := (SimpleButtonMorph new
		"height: self smallFontHeight;
		borderWidth: 2;"
		color: Color gray;
		target: self;
		actionSelector: #toggleRecording;
		yourself).
	self updateRecordingButtonLabel.
	self addMorphBack: recordingButton