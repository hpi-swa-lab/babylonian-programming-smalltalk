visualization
newRectangleFor: aValue at: positionIndex
	
	
	| scaledWidth scaledHeight left |
	scaledWidth := self scaleX scaledValueOf: aValue x.
	scaledHeight := self scaleY scaledValueOf: aValue y.
	left := ((positionIndex - 0.5) * self spaceBetweenPoints) rounded.
	
	^ Morph new
		extent: scaledWidth abs@scaledHeight abs;
		color: (self rectangleColorForValue: aValue);
		borderStyle: (self borderStyleFor: aValue);
		left:  (scaledWidth / 2) + left;
		top: (self class coordinateSystemSize y / 2) - (scaledHeight abs / 2) - (scaledHeight/2) ;
		yourself
	