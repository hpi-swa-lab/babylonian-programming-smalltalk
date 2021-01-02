preferences
wantsSidebarAnnotations
	
	<preference: 'Activate side bar annotations'
		category: 'Babylonian Editor'
		description: 'When activated, all annotations in the babylonian editor are displayed on the right side of the code editor.'
		type: #Boolean>
	^ BPSidebarAnnotations ifNil: [false]