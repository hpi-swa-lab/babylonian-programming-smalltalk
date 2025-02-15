*Babylonian-UI-private
doAddAnnotationMorphToMethod: anAnnotation in: anInterval

	| text newMorph |
	anAnnotation methodReference: self methodReference.
	text := self codeTextMorph text.
	newMorph := anAnnotation asMorph.
	text 
		addAttribute: (BPTextDecoration new
			anchoredMorph: newMorph;
			yourself)
		from: anInterval start
		to: anInterval stop.
	self codeTextMorph textMorph addMorph: newMorph