visualization
axisYNotationMorph
	
	
	^ self axisYNotationMorphWithContents: {(self scaleY domain min) printString. 
		'0'.
		(self scaleY domain max) printString}.