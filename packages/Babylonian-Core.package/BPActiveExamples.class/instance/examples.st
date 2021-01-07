accessing
examples
	
	^ mutex critical: [examples keys collect: [:ref | ref actualExample]]