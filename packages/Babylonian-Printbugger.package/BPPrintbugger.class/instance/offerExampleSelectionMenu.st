private -ui 
offerExampleSelectionMenu

	| builder menuSpec |
	
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	BPPrintbuggerColumnMorph examplesToDisplayForSelection do: [:anExample | 
		 menuSpec 
			add: ((anExample isNilExample
				ifTrue: ['<yes>'] ifFalse: ['<no>']),  anExample uniqueIdentifier)
			target: self 
			selector: #addNewColumnFor:
			argumentList: {anExample}].
	builder runModal: (builder open: menuSpec).