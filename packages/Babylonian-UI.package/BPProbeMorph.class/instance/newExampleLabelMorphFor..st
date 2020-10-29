private - ui
newExampleLabelMorphFor: aTrace

	| exampleLabel |
	exampleLabel := aTrace example exampleName asText.
	exampleLabel addAttribute: (BPPluggableTextAttribute new evalBlock: [
		ToolSet 
			browse: aTrace example method methodClass 
			selector: aTrace example method selector asSymbol]).
	^ (TextMorph new)
		contents: exampleLabel;
		color: aTrace example color;
		yourself