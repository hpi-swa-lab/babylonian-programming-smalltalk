drawing
drawOn: aCanvas
	
	| balloonCanvas |
	balloonCanvas := aCanvas asBalloonCanvas.
	balloonCanvas aaLevel: 4.
	^ super drawOn: balloonCanvas