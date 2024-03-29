*Babylonian-UI-private
doAddAnnotation: anAnnotation in: interval
	"Separated from addAnotationIn: to allow for multiple annotations to be added without saving first."
	| text actualInterval newMorph |
	actualInterval := self determineIntervalToAnnotateFor: interval forNodes: anAnnotation canBeAnnotatedTo.
	actualInterval ifNil: [self codeTextMorph textMorph flash. ^ self].
	anAnnotation methodReference: self methodReference.
	text := self codeTextMorph text.
	newMorph := anAnnotation asMorph.
	text 
		addAttribute: (BPTextDecoration new
			anchoredMorph: newMorph;
			yourself)
		from: actualInterval start
		to: actualInterval stop.
	self codeTextMorph textMorph addMorph: newMorph.