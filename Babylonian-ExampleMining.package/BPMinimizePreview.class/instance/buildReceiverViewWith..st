toolbuilder
buildReceiverViewWith: aBuilder

	^ self 
		buildPanelSpecContaining: {
			self explorerSpecFor: #receiver. 
			self explorerSpecFor: #miniReceiver} 
		with: aBuilder