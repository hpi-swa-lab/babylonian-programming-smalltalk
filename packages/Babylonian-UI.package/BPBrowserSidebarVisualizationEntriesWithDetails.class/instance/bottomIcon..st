priv toolbuilder (do not overwrite)
bottomIcon: aNumber
	
	^ (self bottomIconFor: (self bottomEntries at: aNumber) row: aNumber) ifNil: [ToolIcons blank]