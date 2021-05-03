priv toolbuilder (do not overwrite)
topIcon: aNumber
	
	^ (self topIconFor: (self topEntries at: aNumber)) ifNil: [ToolIcons blank]