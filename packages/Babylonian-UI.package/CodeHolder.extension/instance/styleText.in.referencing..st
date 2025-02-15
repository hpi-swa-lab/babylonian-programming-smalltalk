*Babylonian-UI-private
styleText: aText in: aRange referencing: aMethodReference

	| linkedProbe |
	self flag: #todo. "If assignment already has an annotation, re-use that one"
	linkedProbe := BPProbe new methodReference: aMethodReference.
	aText addAttribute: (
		BPTextDecoration new
			anchoredMorph: linkedProbe asMorph;
			yourself)
		from: aRange x
		to: aRange y.
	^ linkedProbe