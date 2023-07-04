private - ui
offerExampleSelectionMenu

	| builder menuSpec examples |
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	examples := self class examplesToDisplayForSelection asOrderedCollection.
	examples add: #- afterIndex: (examples allButFirst findFirst: [:anExample | anExample isActive not]).
	
	examples do: [:anExample | anExample == #-
			ifTrue: [menuSpec addSeparator]
			ifFalse: [menuSpec 
				add: (((self isDisplaying: anExample)
					ifTrue: ['<yes>'] ifFalse: ['<no>']),  anExample uniqueIdentifier)
				target: self 
				selector: #example:
				argumentList: {anExample}]].
	builder runModal: (builder open: menuSpec).