as yet unclassified
exampleValueFromMethodSource: classAndMethodNode for: aSearchTerm

	| wantedThingie class gluedCode oldCode result index newMethodName classInstance |
	oldCode := classAndMethodNode value sourceText asString.
	wantedThingie := (((((oldCode splitBy: aSearchTerm) first splitBy: '.') last splitBy: ': ') last splitBy: '(') last splitBy: '=') last.
	"wantedThingie last = $] ifTrue: [wantedThingie := wantedThingie copyFrom: 1 to: wantedThingie size -1]."
	wantedThingie withBlanksTrimmed ifEmpty: [wantedThingie := '43'].
	((wantedThingie includesSubstring: '[')
		or: [(wantedThingie includesSubstring: ']')
				or: [wantedThingie includesSubstring: ')']]) ifTrue: [wantedThingie := '42'].
	class := classAndMethodNode key.
	index := (oldCode indexOf: $^ startingAt: 1).
	index > 0 ifTrue: [oldCode := oldCode copyFrom: 1 to: index - 1].
	oldCode last ~= $. ifTrue: [oldCode := oldCode, '.'].
	class compile: 'eva', oldCode, String cr, '^ ', wantedThingie.
	gluedCode := 'eva'.
	newMethodName := ('eva', classAndMethodNode value selector) asSymbol.
	classInstance := class new.
	classInstance setUp.
	result := classInstance perform: newMethodName.
	^ result
	