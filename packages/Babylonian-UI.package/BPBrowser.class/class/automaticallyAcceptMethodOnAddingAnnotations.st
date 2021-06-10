preferences
automaticallyAcceptMethodOnAddingAnnotations
	
	<preference: 'Multi-window browsers'
		category: 'Babylonian Editor'
		description: 'When enabled, any changes to a method are automatically accepted before adding an annotation.'
		type: #Boolean>
	^ AutoAcceptOnAddingAnnotations ifNil: [false]