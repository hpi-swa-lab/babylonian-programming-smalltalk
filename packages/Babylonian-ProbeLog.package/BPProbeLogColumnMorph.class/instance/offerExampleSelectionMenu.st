private - ui
offerExampleSelectionMenu

	| builder menuSpec |
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	
	 self class menuSelectionItems do: [:anItem | anItem == #-
			ifTrue: [menuSpec addSeparator]
			ifFalse: [menuSpec 
				add: (((self isDisplaying: anItem)
					ifTrue: ['<yes>'] ifFalse: ['<no>']),  anItem uniqueIdentifier)
				target: self 
				selector: #example:
				argumentList: {anItem}]].
	builder runModal: (builder open: menuSpec).