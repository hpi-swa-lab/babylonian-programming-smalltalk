submorphs-add/remove
abandon

	super abandon.
	self connectedMorph ifNotNil: [:m | m abandon]