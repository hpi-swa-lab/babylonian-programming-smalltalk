updating
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	(self submorphNamed: #lineName ifNone: [Morph new]) color: self class actionTextColor.
	