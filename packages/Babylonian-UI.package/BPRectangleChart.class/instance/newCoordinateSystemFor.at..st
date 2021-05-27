visualization
newCoordinateSystemFor: aValue at: positionIndex
	
	| left center |
	"There is an extra Morph containing the lines so the tooltip is far easier to activate through more area"
	left := ((positionIndex - 1) * self spaceBetweenPoints) rounded.
	center := ((positionIndex - 0.5) * self spaceBetweenPoints) rounded.
	^ Morph new
		extent: self class coordinateSystemSize;
		left: left;
		width: self spaceBetweenPoints;
		color: Color transparent;
		balloonText: aValue printString;
		addAllMorphs: 
			{LineMorph 
				from: center@0 
				to: center@(self class coordinateSystemSize y)
				color: self lineColor width: self lineWidth.
			LineMorph 
				from: left@(self class coordinateSystemSize y / 2) 
				to: (left + self spaceBetweenPoints)@(self class coordinateSystemSize y / 2) 
				color: self lineColor width: self lineWidth.};
		yourself.
	