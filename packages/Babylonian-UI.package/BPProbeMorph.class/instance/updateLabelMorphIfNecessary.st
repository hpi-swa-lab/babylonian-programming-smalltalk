private - ui
updateLabelMorphIfNecessary
	
	| labelBox |
	(widgetsMorph submorphNamed: #labelBox) ifNil: [
		widgetsMorph addMorphFront: ( 
			Morph new
				name: #labelBox; 
				color: Color transparent; 
				changeTableLayout; 
				layoutInset: 0;
				listDirection: #leftToRight; 
				vResizing: #shrinkWrap;
				hResizing: #spaceFill;
				cellPositioning: #topLeft;
				cellGap: 1;
				yourself)].
	labelBox := widgetsMorph submorphNamed: #labelBox.

	self annotation hasLabel 
		ifTrue: [
			addLabelMorph ifNotNil: [:aMorph | aMorph abandon].
			labelMorph ifNil: [
				labelMorph := self newLabelMorph.
				labelMorph submorphs first hResizing: #spaceFill].
			labelBox addMorphBack: labelMorph]
		ifFalse: [
			labelMorph ifNotNil: [:aMorph | aMorph abandon].
			addLabelMorph ifNil: [
				addLabelMorph := self newAddLabelMorph].
			labelBox addMorphBack: addLabelMorph].