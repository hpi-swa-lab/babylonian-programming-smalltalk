toolbuilder
buildButtonPaneWith: aBuilder

	^ self buildPanelSpecContaining: {self buildSearchButtonWith: aBuilder. 
										self buildAddButtonWith: aBuilder.} 
		with: aBuilder