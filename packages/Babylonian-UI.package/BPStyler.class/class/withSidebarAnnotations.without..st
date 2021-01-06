preferences
withSidebarAnnotations: aBlock without: anotherBlock
	
	^ self wantsSidebarAnnotations
		ifTrue: aBlock
		ifFalse: anotherBlock