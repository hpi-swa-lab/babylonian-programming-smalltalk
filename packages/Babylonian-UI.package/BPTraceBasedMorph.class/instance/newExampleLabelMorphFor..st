private - ui
newExampleLabelMorphFor: aTrace
	
	| exampleLabel |
	exampleLabel := ((String 
		streamContents: [:str | str nextPutAll: (aTrace example exampleName padded: #right to: 6 with: Character space)] 
		limitedTo: 6), '...') asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [
		ToolSet 
			browse: aTrace example method methodClass 
			selector: aTrace example method selector asSymbol]).
	^ (TextMorph string: exampleLabel size: BPAnnotationMorph smallFontHeight)
		color: aTrace example color;
		hResizing: #rigid;
		width: BPAnnotationMorph smallFontWidth * 8;
		yourself