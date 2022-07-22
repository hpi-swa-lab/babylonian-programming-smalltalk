private - ui
offerExampleSelectionMenu

	| builder menuSpec |
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	self class examplesToDisplayForSelection do: [:anExample | 
		 menuSpec 
			add: (((self isDisplaying: anExample)
				ifTrue: ['<yes>'] ifFalse: ['<no>']),  anExample uniqueIdentifier)
			target: self 
			selector: #example:
			argumentList: {anExample}].
	builder runModal: (builder open: menuSpec).