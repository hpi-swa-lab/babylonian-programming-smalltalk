*BabylonianProgramming-UI
isSeparator
	"Answer whether the receiver is one of the separator characters--space, 
	cr, tab, line feed, or form feed."

	| integerValue |
	(integerValue := self asInteger) > 32 ifTrue: [ ^false ].
	integerValue
		caseOf: {
			[ 1 "start of header" ] -> [ ^true ].
			[ 32 "space" ] -> [ ^true ].
			[ 9 "tab" ] -> [ ^true ].
			[ 13 "cr"] -> [ ^true ].
			[ 10 "line feed" ] -> [ ^true ].
			[ 12 "form feed"] -> [ ^true ] }
		otherwise: [ ^false  ]