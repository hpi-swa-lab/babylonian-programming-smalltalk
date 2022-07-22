tests
testNewExampleOnMetaclass
	
	| example |
	example := (BPTestExamplesClass class>>#metaclassMethod) bpNewExampleFrom: BPMethodExample.
	
	self 
		assert: (BPTestExamplesClass class>>#metaclassMethod) compiledMethod equals: example method;
		assert: example argumentScripts isEmpty;
		assert: 'BPTestExamplesClass class new' equals: example receiverConstructor.