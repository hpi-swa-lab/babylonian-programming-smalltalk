visualization
newLineFrom: aDataPointMorph1 to: aDataPointMorph2
	
	
	^ LineMorph 
		from: aDataPointMorph1 center 
		to: aDataPointMorph2 center 
		color: (self lineColorFrom: aDataPointMorph1 center to: aDataPointMorph2 center)
		width: self lineWidth
		
	