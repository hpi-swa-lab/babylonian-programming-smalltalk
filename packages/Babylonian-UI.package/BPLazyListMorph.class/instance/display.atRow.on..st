drawing
display: item atRow: row on: canvas
	
	
	(self backgroundColorForRow: row item: item) ifNotNil: [:backgroundColor | | drawBounds fill |
		drawBounds := self drawBoundsForRow: row.
		fill := backgroundColor isColor
			ifTrue: [SolidFillStyle color: backgroundColor]
			ifFalse: [backgroundColor].
		fill isGradientFill ifTrue: [
			fill origin: drawBounds topLeft.
			fill direction: 0@ drawBounds height].
	
		canvas fillRectangle: drawBounds fillStyle: fill].
	
	super display: item atRow: row on: canvas