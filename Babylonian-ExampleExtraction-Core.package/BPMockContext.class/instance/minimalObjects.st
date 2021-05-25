mocking
minimalObjects
	
	receiverMockTree ifNil: [^ nil].
	^ {receiverMockTree createMinimalObject. argumentsMockTrees collect: [:mockTree | mockTree createMinimalObject]}