drawing
drawOn: aCanvas
	
	aCanvas 
		fillRectangle: (0@0 extent: aCanvas form extent) 
		fillStyle: ((GradientFillStyle 
			colors: {Color white . self color})
			origin: (aCanvas form extent * ((2/3)@(1/2))) rounded; 
			direction: (aCanvas extent / 2) rounded;
			radial: true)
			