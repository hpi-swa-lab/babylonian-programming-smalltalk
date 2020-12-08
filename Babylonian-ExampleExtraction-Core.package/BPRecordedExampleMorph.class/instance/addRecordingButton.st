as yet unclassified
addRecordingButton
	
	
	recordingButton := (SimpleButtonMorph new
		height: self smallFontHeight;
		color: self color;
		borderWidth: 2;
		target: self;
		actionSelector: #toggleRecording;
		yourself).
	self updateRecordingButtonLabel.
	self addMorphBack: recordingButton