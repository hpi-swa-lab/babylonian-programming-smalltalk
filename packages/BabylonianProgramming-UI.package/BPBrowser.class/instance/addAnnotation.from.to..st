private
addAnnotation: anAnnotation from: intervalStart to: intervalStop

	| newContent text |
	anAnnotation methodReference: self methodReference.
	text := self codeTextMorph text.
	newContent := Character startOfHeader asString asText , (text copyFrom: intervalStart to: intervalStop).
	newContent addAttribute: (TextAnchor new
			anchoredMorph: anAnnotation asMorph;
			yourself).
	newContent := text 
		copyReplaceFrom: intervalStart
		to: intervalStop
		with: newContent.
		
	(self codeTextMorph) 
		setText: newContent;
		hasUnacceptedEdits: true;
		accept.
	

