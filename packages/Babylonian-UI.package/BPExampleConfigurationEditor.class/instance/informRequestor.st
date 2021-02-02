model accessing
informRequestor
	
	self requestor isInWorld ifFalse: [
		UIManager default inform: 'The spawning editor was closed.
Your example might not have been saved.'.
		^ false].
	self requestor codeContentChanged.