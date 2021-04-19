visualization
newRectangleFor: aValue centeredIn: aValueMorph
	
	
	"There is an extra Morph containing the datapoint itself so the tooltip is far easier to activate through more area"
	|scaledWidth scaledHeight|
	scaledWidth := self scaleX scaledValueOf: aValue x.
	scaledHeight := self scaleY scaledValueOf: aValue y.
	
	^ Morph new
		extent: scaledWidth abs@scaledHeight abs;
		color: (self rectangleColorForValue: aValue);
		x:  aValueMorph x + (scaledWidth / 2);
		y: (self class coordinateSystemSize y / 2)  - scaledHeight;
		yourself
	