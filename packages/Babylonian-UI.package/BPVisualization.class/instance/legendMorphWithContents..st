visualization
legendMorphWithContents: aStringCollection

	
	"Only works with collection sizes > 1"
	| notationMorphs areaHeight|
	(aStringCollection size > 1) 
		ifTrue: [
			areaHeight := self class canvasHeight  / (aStringCollection size - 1).
			notationMorphs := aStringCollection collectWithIndex: [:aString :index | 
				(TextMorph string: aString size: self fontHeight)
					color: BPAnnotationMorph textColor;
					y: (aStringCollection size - index) * areaHeight - (self class heightMargin);
					yourself]]
			ifFalse: [ notationMorphs := {} ].
	
 	^ Morph new
		color: Color transparent; 
		name: #axisYNotation;
		vResizing: #shrinkWrap;
		addAllMorphs: notationMorphs;
		yourself