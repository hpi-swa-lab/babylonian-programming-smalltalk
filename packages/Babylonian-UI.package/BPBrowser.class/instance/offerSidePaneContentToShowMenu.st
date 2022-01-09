what to show
offerSidePaneContentToShowMenu

	"Offer a menu governing what to show"
	| builder menuSpec |
	
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	self sidePaneContentsSymbolQuints do: [:aQuint | 
		| item |
		item := menuSpec 
			add: ((self sidePaneContent == aQuint first ifTrue: ['<yes>'] ifFalse: ['<no>']), aQuint second asString)
			target: self 
			selector: #updateSidePaneMorph:
			argumentList: {aQuint first}.
		item help: aQuint third.
	].
	builder runModal: (builder open: menuSpec).