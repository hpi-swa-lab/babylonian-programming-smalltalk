building
deserialize

	| call msg |
	
	call := self findStatementWithMessage: #should:raise:.
	msg := self getFirstStatementFrom: (call at: 1).

	^ BPMethodExample new
		exampleName: self exampleName;
		method: self test;
		expectedResult: (self deserializeException: (call at: 2));
		receiverConstructor: (self deserializeReceiver: (msg receiver));
		argumentScripts: (self deserializeArguments: (msg arguments))