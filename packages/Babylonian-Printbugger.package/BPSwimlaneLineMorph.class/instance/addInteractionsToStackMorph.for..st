private - ui
addInteractionsToStackMorph: aStackMorph for: abpContext

	context forStackFrame: abpContext add: aStackMorph.	
	aStackMorph 
		on: #click 
			send: #value 
			to: [containingSwimlane browseFor: abpContext methodReference compiledMethod];
		on: #mouseEnter
			send: #value
			to: [
				(context stackColumnFor: abpContext) do: [:stackFrameMorph |
					stackFrameMorph borderStyle: (BorderStyle width: 1 color: Color black)].
				aStackMorph showBalloon: aStackMorph balloonText hand: nil];
		on: #mouseLeave
			send: #value
			to: [(context stackColumnFor: abpContext) do: [:stackFrameMorph |
					stackFrameMorph borderStyle: nil]..
				aStackMorph deleteBalloon].