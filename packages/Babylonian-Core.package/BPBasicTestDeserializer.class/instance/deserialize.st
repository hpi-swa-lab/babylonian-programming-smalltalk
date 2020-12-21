building
deserialize
	
	| stmts call |
	
	stmts := self ast body statements.
	call := stmts at: 1.
	
	^ BPMethodExample new
		receiverConstructor: (self deserializeReceiver: (call receiver));
		argumentScripts: (self deserializeArguments: (call arguments collect: [:arg | arg value]))