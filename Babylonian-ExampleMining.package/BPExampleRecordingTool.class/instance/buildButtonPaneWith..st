toolbuilder
buildButtonPaneWith: aBuilder

	^ self buildPanelSpecContaining: {self buildLampSpec. 
										self buildToggleButtonSpecWith: aBuilder. 
										self buildAddButtonSpecWith: aBuilder.} 
		with: aBuilder