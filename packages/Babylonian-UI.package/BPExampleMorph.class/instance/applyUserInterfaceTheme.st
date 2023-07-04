updating
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	
	exampleSpecificMorphs submorphsDo: [:aSubmorph | aSubmorph triggerEvent: #updateLabelGraphic].