private
addAnnotation: anAnnotation in: interval

	| newContent text actualInterval |
	actualInterval := self determineIntervalToAnnotateFor: interval forNodes: anAnnotation canBeAnnotatedTo.
	actualInterval ifNil: [self codeTextMorph textMorph flash. ^ self].
	
	anAnnotation methodReference: self methodReference.
	text := self codeTextMorph text.
	newContent := Character startOfHeader asString asText , (text copyFrom: actualInterval start to: actualInterval stop).
	newContent addAttribute: (BPTextAnchor new
			anchoredMorph: anAnnotation asMorph;
			yourself).
	newContent := text 
		copyReplaceFrom: actualInterval start
		to: actualInterval stop
		with: newContent.
		
	(self codeTextMorph) 
		setText: newContent;
		hasUnacceptedEdits: true;
		accept.
	
