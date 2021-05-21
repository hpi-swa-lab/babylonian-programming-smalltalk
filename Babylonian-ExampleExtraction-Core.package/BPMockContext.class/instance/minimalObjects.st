mocking
minimalObjects
	
	lastMockTrees ifNil: [^ nil].
	^ {lastMockTrees first createMinimalObject. lastMockTrees second collect: [:mockTree | mockTree createMinimalObject]}