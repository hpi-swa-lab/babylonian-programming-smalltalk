tests - running
testMethodExamplesCanAccessTheEnclosingClassAsSelf
	
	| example |
	example := self createExamples first.
	example receiverConstructor: 'self'.
	example argumentScripts: #('self' '').
	self assert: BPTestExamplesClass equals: example newReceiver.
	self assert: {BPTestExamplesClass. BPTestExamplesClass} equals: example newArguments.