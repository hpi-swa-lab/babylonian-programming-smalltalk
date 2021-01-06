building
deserialize

	| call |

	call := self findStatementWithMessage: #assert:equals:.

	^ BPMethodExample new
		expectedResult: (self deserializeExpected: ((call at: 1) token value));
		receiverConstructor: (self deserializeReceiver: ((call at: 2) receiver));
		argumentScripts: (self deserializeArguments: ((call at: 2) arguments collect: [:arg | arg value]))