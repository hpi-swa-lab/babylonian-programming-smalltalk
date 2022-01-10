private -ui 
newEmptyExamplesNotification

	^ 'No active examples have been found to display.' asMorph
		color: (PluggableTextMorph basicNew userInterfaceTheme textColor);
		yourself