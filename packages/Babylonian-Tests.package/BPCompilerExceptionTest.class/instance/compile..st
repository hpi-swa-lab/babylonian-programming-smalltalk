private
compile: sourceString
	
	| result |
	originalText := text := sourceString.
	previousSelection := originalSelection := 1 to: text size + 1.
	selectionInterval := nil.
	result := self class
		compile: text
		classified: 'generated'
		notifying: self codePaneTextMorph.
	result ifNil: [^ self].
	self codePaneTextMorph accept.
	selectionInterval := originalSelection.