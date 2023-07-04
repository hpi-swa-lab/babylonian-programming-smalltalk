private -ui 
offerExampleSelectionMenu

	| builder menuSpec |
	
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	
	BPProbeLogColumnMorph menuSelectionItems do:[:anItem | anItem == #-
			ifTrue: [menuSpec addSeparator]
			ifFalse: [menuSpec 
			add: ((anItem isNilExample
				ifTrue: ['<yes>'] ifFalse: ['<no>']),  anItem uniqueIdentifier)
			target: self 
			selector: #addNewColumnFor:
			argumentList: {anItem}]].
	builder runModal: (builder open: menuSpec).