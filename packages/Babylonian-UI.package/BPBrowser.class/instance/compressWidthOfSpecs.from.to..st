callgraph ui
compressWidthOfSpecs: specs from: aFraction to: anotherFraction
	
	^ specs collect: [:assoc || frame offset |
		offset := aFraction - anotherFraction.
		frame := assoc key isRectangle
					ifTrue: [LayoutFrame fractions: assoc key] ifFalse: [assoc key].
		frame rightFraction: frame rightFraction / aFraction * anotherFraction + offset.
		frame leftFraction: frame leftFraction / aFraction * anotherFraction + offset.
		frame -> assoc value].