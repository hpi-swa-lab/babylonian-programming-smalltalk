private - ui
newBackUpTitleMorphFor: aBPExample

	^ StringMorph new
		name: #title;
		contents: (Text string: aBPExample uniqueIdentifier attribute: TextEmphasis bold);
		on: #click send: #value to: [self browseFor: aBPExample method];
		color: BPAnnotationMorph textColor;
		yourself
	