private
newExampleLabelMorphFor: anExample
	
	"Copied from BPAnnotationsMorph"
	| exampleLabel |
	exampleLabel := anExample exampleName asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [
		ToolSet 
			browse: anExample method methodClass 
			selector: anExample method selector asSymbol]).
	^ (TextMorph string: exampleLabel size: BPAnnotationMorph smallFontHeight)
		color: anExample color;
		yourself