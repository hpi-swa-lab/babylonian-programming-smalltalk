building
deserialize
	
	| stmts call |
	
	stmts := self ast body statements.
	call := (stmts at: (stmts findFirst: [:statement | statement selector = #assert:equals:])) arguments.
	
	^ BPMethodExample new
		"expectedValue: (self deserializeExpected: ((call at: 1) token value);"
		receiverConstructor: (self deserializeReceiver: ((call at: 2) receiver));
		argumentScripts: (self deserializeArguments: ((call at: 2) arguments collect: [:arg | arg value]))