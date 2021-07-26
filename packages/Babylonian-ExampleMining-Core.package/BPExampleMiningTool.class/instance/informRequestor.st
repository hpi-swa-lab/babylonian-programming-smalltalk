ui updating
informRequestor
	
	self requestor isNil ifTrue: [^ self].
	self requestor codeTextMorph isNil not "isInWorld" ifFalse: [
		UIManager default inform: 'The spawning editor was closed.
Your example might not have been saved.'.
		^ false].
	self requestor saveMethodWithExamples.