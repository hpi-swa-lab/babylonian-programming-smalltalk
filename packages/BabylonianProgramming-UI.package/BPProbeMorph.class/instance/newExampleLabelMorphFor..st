private - ui
newExampleLabelMorphFor: aTrace

	| exampleLabel |
	exampleLabel := aTrace example exampleName asText.
	^ (StringMorph contents: exampleLabel)
		color: aTrace example color;
		yourself