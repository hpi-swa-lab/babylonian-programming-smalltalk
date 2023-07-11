toolbuilder
buildResultViewWith: aBuilder

	^ self buildPanelSpecContaining: {self buildSearchListWith: aBuilder. 
										self buildMethodTextWith: aBuilder.} 
		with: aBuilder