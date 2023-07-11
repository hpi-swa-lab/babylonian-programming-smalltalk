actual-tests
testMakingAnExampleAndRunningIt

	| testCaseExample |
	testCaseExample := BPTestCaseExample new.
	testCaseExample
		testCaseClassFrom: BPTestCaseExampleTest name;
		methodSelector: #testSomething.

	testCaseExample execute.

	self assert: testCaseExample morphClass equals: BPTestCaseExampleMorph.
	self assert: (testCaseExample asPragma includesSubstring: 'testCaseExampleNamed:')