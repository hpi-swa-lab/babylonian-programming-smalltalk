visualization
newScaleLinesOn: aMorph
	
	
	^ {LineMorph from: 0@self scaleYOffset to: aMorph width@self scaleYOffset
		color: self scaleLineColor width: self scaleLineWidth.
		LineMorph from: 0@(self class canvasHeight/2)+self scaleYOffset to: aMorph width@(self class canvasHeight/2)+self scaleYOffset
		color: self scaleLineColor width: self scaleLineWidth.
		LineMorph from: 0@self class canvasHeight + self scaleYOffset to: aMorph width@self class canvasHeight + self scaleYOffset
		color: self scaleLineColor width: self scaleLineWidth.}
		
	