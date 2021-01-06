preferences
withSideBarAnnotations: aBlock without: anotherBlock
	
	^ self wantsSidebarAnnotations
		ifTrue: aBlock
		ifFalse: anotherBlock