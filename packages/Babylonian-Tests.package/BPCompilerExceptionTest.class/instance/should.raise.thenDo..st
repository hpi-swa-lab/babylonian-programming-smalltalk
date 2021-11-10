assertions
should: aBlock raise: anExceptionalEvent thenDo: aHandlerBlock

	| raised result |
	raised := false.
	result := aBlock
		on: anExceptionalEvent
		do: [:ex |
			raised := true.
			aHandlerBlock cull: ex].
	self assert: raised description: ('aBlock should have raised {1}' translated format: {anExceptionalEvent}).
	^ result