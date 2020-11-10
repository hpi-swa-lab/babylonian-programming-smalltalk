tracing
execute
	
	(self extractedClassName isNil or: [self extractedMethodSelector isNil]) ifTrue: [^ self].
	Compiler evaluate: self executeString