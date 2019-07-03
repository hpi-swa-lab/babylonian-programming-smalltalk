private
addAnnotation: anAnnotation

	| newContent text |
	anAnnotation methodReference: self methodReference.
	text := self codeTextMorph text.
	newContent := Character startOfHeader asString asText , 
		(text copyFrom: self codeTextMorph selectionInterval start to: self codeTextMorph selectionInterval stop).
	newContent addAttribute: (TextAnchor new
			anchoredMorph: anAnnotation asMorph;
			yourself).
	newContent := text 
		copyReplaceFrom: self codeTextMorph selectionInterval start
		to: self codeTextMorph selectionInterval stop
		with: newContent.
		
	self codeTextMorph setText: newContent.
	self codeTextMorph setSelection: (self selectedInterval start to: self selectedInterval stop + 1).
	self codeTextMorph hasUnacceptedEdits: true.
	self codeTextMorph accept.
	