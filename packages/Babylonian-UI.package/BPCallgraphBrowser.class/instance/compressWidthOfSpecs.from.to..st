callgraph ui
compressWidthOfSpecs: specs from: aFraction to: anotherFraction
	<exampleNamed: 'base example' self: '' with: '{(0@0 corner: 1@1) -> true}' with: '1' with: '0.7'>
	^ specs collect: [:assoc || frame offset |
		offset := aFraction - anotherFraction.
		frame := assoc key isRectangle
					ifTrue: [LayoutFrame fractions: assoc key] ifFalse: [assoc key].
		frame rightFraction: frame rightFraction / aFraction * anotherFraction.
		frame leftFraction: frame leftFraction / aFraction * anotherFraction.
		frame -> assoc value].