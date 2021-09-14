private - ui
ensureInputBoxNamed: aSymbol atFront: aBoolean
	
	| morph |
	(widgetsMorph submorphNamed: aSymbol) ifNil: [
		morph := Morph new
				name: aSymbol; 
				color: Color transparent; 
				changeTableLayout; 
				layoutInset: 0;
				listDirection: #leftToRight; 
				vResizing: #shrinkWrap;
				hResizing: #spaceFill;
				cellPositioning: #topLeft;
				cellGap: 1;
				yourself.
		aBoolean 
			ifTrue: [widgetsMorph addMorphFront: morph]
			ifFalse: [widgetsMorph addMorphBack: morph]].
	^ widgetsMorph submorphNamed: aSymbol