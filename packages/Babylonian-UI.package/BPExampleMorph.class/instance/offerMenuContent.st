what to show
offerMenuContent

	"Offer a menu governing what to show"
	| builder menuSpec |
	
	builder := ToolBuilder default.
	menuSpec := builder pluggableMenuSpec new.
	self menuContentsSymbolQuints do: [:aQuint | 
		| item |
		item := menuSpec 
			add: (aQuint second asString)
			target: self 
			selector: aQuint first asSymbol
			argumentList: Array empty.
		item help: aQuint third.
	].
	builder runModal: (builder open: menuSpec).