updating
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	
	buttonBar submorphsDo: [:aButton | aButton triggerEvent: #updateLabelGraphic]