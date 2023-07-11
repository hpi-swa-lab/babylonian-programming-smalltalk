ui updating
informRequestor

	self requestor ifNil: [^ self].
	self requestor codeTextMorph ifNil: [
		UIManager default inform: 'The spawning editor was closed.
Your example might not have been saved.'.
		^ false].
	self requestor saveMethodWithExamples