visualization
legendMorph
	
	
	^ self legendMorphWithContents: {(self scaleY domain min) printString. 
		(self scaleY domain at: (self scaleY domain extent / 2) +1) printString.
		(self scaleY domain max) printString}.