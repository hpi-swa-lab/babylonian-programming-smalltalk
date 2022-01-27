private -ui 
newColumnFor: aBPExample

	| columnMorph |
	columnMorph := Morph new
					color: Color transparent;
					changeTableLayout;
					listDirection: #topToBottom;
					cellPositioning: #topLeft;
					hResizing: #shrinkWrap;
					vResizing: #shrinkWrap;
					setProperty: #displayedExample toValue: aBPExample;
					yourself.
	columnMorph addMorphBack: (self newExampleSelectionButtonMorphIn: columnMorph).
	self displaySwimlaneFor: aBPExample in: columnMorph.
	^ columnMorph
			 