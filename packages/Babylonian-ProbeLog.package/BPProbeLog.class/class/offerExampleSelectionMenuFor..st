as yet unclassified
offerExampleSelectionMenuFor: aSelector

	| builder menuSpec examples |
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	examples := self examplesToDisplayForSelection asOrderedCollection.
	examples add: #- afterIndex: (examples allButFirst findFirst: [:anExample | anExample isActive not]).
	
	examples do: [:anExample | anExample == #-
			ifTrue: [menuSpec addSeparator]
			ifFalse: [menuSpec 
				add: (((self isDisplaying: anExample)
					ifTrue: ['<yes>'] ifFalse: ['<no>']),  anExample uniqueIdentifier)
				target: self 
				selector: aSelector
				argumentList: {anExample}]].
	builder runModal: (builder open: menuSpec).