visualization
newDatapointFor: aValue centeredIn: aValueMorph
	
	
	"There is an extra Morph containing the datapoint itself so the tooltip is far easier to activate through more area"
	^ Morph new
		width: aValueMorph width;
		height: self class preferredHeight;
		x: aValueMorph x;
		color: Color transparent;
		balloonText: aValue printString;
		addMorph: (EllipseMorph new
			extent: self datapointExtent;
			color: (self datapointColorForValue: aValue);
			borderWidth: 0;
			x: aValueMorph center x;
			y: self class canvasHeight - (self scaleY scaledValueOf: aValue);
			yourself);
		yourself
	
		
	