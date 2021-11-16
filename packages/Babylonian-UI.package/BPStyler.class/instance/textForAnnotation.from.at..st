private
textForAnnotation: annotation from: aText at: startTagStart

	| newMorph expressionText |
	newMorph := self annotationMorphFor: annotation.	
	
	newMorph ifNil: [
		"The annotation does not want to be drawn directly"
		^ '' asText].
	
	expressionText := self insertAnchorCharacterForAnnotation: annotation from: aText at: startTagStart.
	expressionText addAttribute: (BPTextAnchor new anchoredMorph: newMorph; yourself).
	
	^ expressionText