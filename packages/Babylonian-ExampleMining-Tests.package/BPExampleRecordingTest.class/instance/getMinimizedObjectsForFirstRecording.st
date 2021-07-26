helpers
getMinimizedObjectsForFirstRecording
	
	| miniContext |
	
	miniContext := BPMiniContext
		methodReference: self methodReference
		receiver: self recordings first first
		arguments: self recordings first second.
	
	^ miniContext createMinimizedObjects