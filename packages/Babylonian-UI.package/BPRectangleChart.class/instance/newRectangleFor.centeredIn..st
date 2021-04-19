visualization
newRectangleFor: aValue centeredIn: aValueMorph
	
	
	|scaledWidth scaledHeight|
	scaledWidth := self scaleX scaledValueOf: aValue x.
	scaledHeight := self scaleY scaledValueOf: aValue y.
	
	^ Morph new
		extent: scaledWidth abs@scaledHeight abs;
		color: (self rectangleColorForValue: aValue);
		borderStyle: (self borderStyleFor: aValue);
		x:  (scaledWidth / 2) +  aValueMorph x;
		y: (self class coordinateSystemSize y / 2) - (scaledHeight abs / 2) - (scaledHeight/2) ;
		yourself
	