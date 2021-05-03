drawing
backgroundColorForRow: row item: item
	
	"never overwrite background color when hovered or selected"
	(row == selectedRow or: [(PluggableListMorph highlightHoveredRow and: [row == self listSource hoverRow])]) ifTrue: [^ nil].
	
	^ self listSource backgroundColorForRow: row