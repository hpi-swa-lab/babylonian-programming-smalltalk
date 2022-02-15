actions
downsized

	| stringMorph |
	stringMorph := (self submorphNamed: #lineName).
	stringMorph fontName: (TextStyle defaultFont name asSymbol) pointSize: 8.5.