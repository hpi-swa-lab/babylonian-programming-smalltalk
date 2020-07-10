preferences
cleanUpTracesOnShutdown
	<preference: 'Remove all recorded traces on shutdown'
		category: 'Babylonian Browser'
		description: 'When enabled all traces from examples are removed on shutdown of the image. This can save space in the image file but will also require manual restarts of examples when the image is started again.'
		type: #Boolean>
	^ CleanUpOnShutdown ifNil: [false]