ui
addValues
	
	values 
		do: [:v | | borderMorph borderWrapperMorph | 
				borderWrapperMorph := self probeMorph newContainerMorph.
				borderWrapperMorph 
					changeTableLayout;
					listDirection: #topToBottom.
				borderMorph := Morph new
					color: (self trace pathForTraceValue: v) color;
					height: ((self fontHeight // 4) max: 4);
					hResizing: #spaceFill;
					balloonText: (self trace pathForTraceValue: v) stackPrintString;
					yourself.
				borderWrapperMorph 
					addMorphFront: (self valueMorphFor: v);
					addMorphBack: borderMorph.
			self addMorphBack: borderWrapperMorph]
		separatedBy: [self addMorphBack: (', ' asMorph
						color: (self class textColor);
						yourself)].