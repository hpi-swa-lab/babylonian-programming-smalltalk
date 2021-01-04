submorphs-add/remove
delete
	
	super delete.
	self connectedMorph ifNotNil: [:m | m abandon]