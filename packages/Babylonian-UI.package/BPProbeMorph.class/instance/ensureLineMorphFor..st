private - ui
ensureLineMorphFor: aTrace

	^ tracesMorph submorphs 
		detect: [:m | 
			(m valueOfProperty: #bpTrace) ifNil: [false] ifNotNil: [:t | t == aTrace]]
		ifNone: [ | newLine scrollPane exploreButton |
			newLine := Morph new 
				color: Color transparent; 
				changeTableLayout; 
				layoutInset: 0;
				listDirection: #leftToRight; 
				vResizing: #shrinkWrap;
				hResizing: #shrinkWrap;
				cellPositioning: #leftCenter;
				cellGap: 1;
				name: 'example line';
				setProperty: #bpTrace toValue: aTrace;
				yourself.
				
			exploreButton := IconicButton new.
			exploreButton 
				labelGraphic: (BPIcons searchIcon scaledToSize: self iconSize);
				color: Color transparent;
				borderWidth: 0;
				extent: (exploreButton extent x * 0.9)@(exploreButton extent y + self scrollBarSize).
			exploreButton 
				actionSelector: #exploreButtonClickedFor:;
				arguments: {aTrace valuesForProbeId: self id};
				target: self.	
			newLine addMorphBack: exploreButton.
			
			newLine addMorphBack: (self newExampleLabelMorphFor: aTrace).
				
			scrollPane := ScrollPane new.
			scrollPane width: 300.
			scrollPane color: Color transparent.
			scrollPane vScrollBarPolicy: #never.
			scrollPane showHScrollBarOnlyWhenNeeded.
			scrollPane scrollBarThickness: self scrollBarSize.
			scrollPane height: 20.
			scrollPane name: #scrollPane.
			
			newLine addMorphBack: scrollPane.
				
			tracesMorph addMorphBack: newLine.
			newLine]

		