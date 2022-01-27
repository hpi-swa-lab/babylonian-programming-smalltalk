private -ui 
offerExampleSelectionMenuIn: aColumnMorph

	| builder menuSpec |
	
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	self examplesToDisplayForSelection do: [:anExample | 
		 menuSpec 
			add: (((self isDisplaying: anExample in: aColumnMorph)
				ifTrue: ['<yes>'] ifFalse: ['<no>']),  anExample uniqueIdentifier)
			target: self 
			selector: #switchSelectedExampleIn:previous:new:
			argumentList: {aColumnMorph. aColumnMorph valueOfProperty: #displayedExample. anExample.}].
	builder runModal: (builder open: menuSpec).