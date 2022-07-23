tests
fixtureMethodSource
	"Just some compilcated source"
	^ self fixtureMethodSelector , '
	| anAnnotation newContent text actualInterval interval newMorph |
	anAnnotation := interval := 10.
	actualInterval := self determineIntervalToAnnotateFor: interval forNodes: anAnnotation canBeAnnotatedTo.
	actualInterval ifNil: [self codeTextMorph textMorph flash. ^ self].
	anAnnotation methodReference: self methodReference.
	text := self codeTextMorph text.
	newMorph := anAnnotation asMorph.
	newContent := Character startOfHeader asString asText 
		addAllAttributes: (text attributesAt: actualInterval start); 
		yourself.
	newContent := newContent , (text copyFrom: actualInterval start to: actualInterval stop).
	newContent addAttribute: (BPTextDecoration new
			anchoredMorph: newMorph;
			yourself).
	newContent := text 
		copyReplaceFrom: actualInterval start
		to: actualInterval stop
		with: newContent.
	(self codeTextMorph) 
		addMorph: newMorph;
		setText: newContent;
		hasUnacceptedEdits: true;
		accept.'