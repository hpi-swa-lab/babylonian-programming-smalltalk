private - ui
newExampleLabelMorphFor: anExample
	
	| exampleLabel |
	exampleLabel := ((String 
		streamContents: [:str | str nextPutAll: (anExample exampleName padded: #right to: 6 with: Character space)] 
		limitedTo: 6), '...') asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [
		ToolSet 
			browse: anExample method methodClass 
			selector: anExample method selector asSymbol]).
	^ (TextMorph string: exampleLabel size: BPAnnotationMorph smallFontHeight)
		color: anExample color;
		hResizing: #rigid;
		width: BPAnnotationMorph smallFontWidth * 8;
		yourself