toolbuilder
buildResultViewWith: aBuilder

	^ self buildPanelSpecContaining: {self buildResultsListWith: aBuilder.  
										 self buildExplorerWith: aBuilder}
		with: aBuilder