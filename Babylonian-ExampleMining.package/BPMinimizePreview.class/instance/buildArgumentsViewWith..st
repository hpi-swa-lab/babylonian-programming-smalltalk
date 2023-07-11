toolbuilder
buildArgumentsViewWith: aBuilder

	^ self 
		buildPanelSpecContaining: {
			self explorerSpecFor: #arguments. 
			self explorerSpecFor: #miniArguments} 
		with: aBuilder