private - ui
addInteractionsToStackMorph: aStackMorph for: aMethodReference

	aStackMorph 
		on: #click 
			send: #value 
			to: [containingSwimlane browseFor: aMethodReference compiledMethod];
		on: #mouseEnter
			send: #value
			to: [aStackMorph borderStyle: (BorderStyle width: 2 color: Color black)];
		on: #mouseLeave
			send: #value
			to: [aStackMorph borderStyle: nil].