priv toolbuilder (do not overwrite)
bottomIconRow: row column: column
	
	| entry |
	entry := self bottomEntries at: row.
	
	^ column == (self bottomIconColumnFor: entry)
		ifTrue: [(self bottomIconFor: entry) ifNil: [ToolIcons blank]]
		ifFalse: [ToolIcons blank]