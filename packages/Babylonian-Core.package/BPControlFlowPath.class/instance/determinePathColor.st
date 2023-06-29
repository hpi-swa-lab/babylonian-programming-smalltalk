accessing
determinePathColor

	| b g pathHash r |
	pathHash := self rawPath fullPrintString hash.
	r := (pathHash >> 8) bitAnd: 2r11111111.
	g := (pathHash >> 16) bitAnd: 2r11111111.
	b := (pathHash >> 24) bitAnd: 2r11111111.
	^ Color r: r g: g b: b range: 255