visualization
newCoordinateSystemFor: aValue centeredIn: aValueMorph
	
	
	"There is an extra Morph containing the lines so the tooltip is far easier to activate through more area"
	^ Morph new
		extent: self class coordinateSystemSize;
		x: aValueMorph x;
		color: Color transparent;
		balloonText: aValue printString;
		borderWidth: 0;
		addAllMorphs: 
			{LineMorph 
				from: (aValueMorph center x)@0 
				to: (aValueMorph center x)@(self class coordinateSystemSize y)
				color: self lineColor width: self lineWidth.
			LineMorph 
				from: (aValueMorph x - (self class coordinateSystemSize x / 2))@(self class coordinateSystemSize y / 2) 
				to: (aValueMorph x + (self class coordinateSystemSize x / 2))@(self class coordinateSystemSize y / 2) 
				color: self lineColor width: self lineWidth.};
		yourself.
	