visualization
newDatapointFor: aValue at: positionIndex
	
	"There is an extra Morph containing the datapoint itself so the tooltip is far easier to activate through more area"
	^ Morph new
		height: self class preferredHeight;
		left: ((positionIndex - 0.5) * self spaceBetweenPoints) rounded;
		width: self spaceBetweenPoints;
		color: Color transparent;
		balloonText: aValue printString;
		addMorph: (EllipseMorph new
			extent: self datapointExtent;
			color: (self datapointColorForValue: aValue);
			borderWidth: 0;
			left: positionIndex * self spaceBetweenPoints;
			top: self class canvasHeight - (self scaleY scaledValueOf: aValue);
			yourself);
		yourself
	
		
	