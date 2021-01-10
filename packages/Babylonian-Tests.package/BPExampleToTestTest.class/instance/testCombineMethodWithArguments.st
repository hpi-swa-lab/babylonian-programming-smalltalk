tests
testCombineMethodWithArguments
	
	self assert: 'hello: 2 world: 3' equals: (BPExampleToTest new combineMethod: 'hello:world:' with: #(2 3)).