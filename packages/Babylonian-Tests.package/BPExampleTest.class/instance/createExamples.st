utility
createExamples
	
	| examples methodExample |
	methodExample := BPMethodExample new
			method: method;
			exampleName: 'test name';
			argumentScripts: #((1 2 3) 2);
			yourself.
	examples := {methodExample.
		BPScriptExample new
			method: method;
			exampleName: 'test name 2';
			script: '2 + 3';
			yourself.
		BPReferencingExample new
			method: BPMoreTestExamplesClass>>#binarySearchIn:theElement:;
			referencedExample: methodExample;
			yourself}.
	"self assert: (examples collect: [:e | e class]) asSet = BPSingleRunExample allSubclasses asSet."
	^ examples
			