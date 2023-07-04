accessing
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	
	addExpressionMorph triggerEvent: #updateLabelGraphic.
	addLabelMorph triggerEvent: #updateLabelGraphic.
	
	(self findDeepSubmorphThat: [:aSubmorph | 
		aSubmorph knownName = 'axisYNotation' ] ifAbsent: [Morph new])
		submorphsDo: [:aTextMorph | aTextMorph color: self class textColor ] .