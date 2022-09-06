utility
createExamples
	
	| examples |
	examples := {BPMethodExample new
			method: method;
			exampleName: 'test name';
			argumentScripts: #((1 2 3) 2);
			yourself.
		BPScriptExample new
			method: method;
			exampleName: 'test name 2';
			script: '2 + 3';
			yourself}.
	self assert: (examples collect: [:e | e class]) asSet = BPSingleRunExample allSubclasses asSet.
	^ examples
			