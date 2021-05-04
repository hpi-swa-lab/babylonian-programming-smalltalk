accessing
examples
	
	^ mutex critical: [examples shallowCopy] 