accessing
color

	^ color ifNil: [
		color := self rawPath isEmptyOrNil 
			ifTrue: [Color Transparent]
			ifFalse: [self determinePathColor] ]