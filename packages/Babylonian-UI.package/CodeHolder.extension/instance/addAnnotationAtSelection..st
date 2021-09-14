*Babylonian-UI-private
addAnnotationAtSelection: anAnnotation
	
	| result |
	self hasUnacceptedEdits ifTrue: [
		BPBrowser automaticallyAcceptMethodOnAddingAnnotations ifFalse: [
				self informUserAndCheckPreference ifFalse: [^ false]].
		"We either have the preference set or users just changed it"
		self assert: BPBrowser automaticallyAcceptMethodOnAddingAnnotations.
		self codeTextMorph accept.
		self hasUnacceptedEdits "still" ifTrue: [^ false]].
	
	result := self 
		addAnnotation: anAnnotation 
		in: (self selectedInterval start to: self selectedInterval stop).
	self codeTextMorph setSelection: (self selectedInterval start + 1 to: self selectedInterval stop + 2).
	^ result