tests
testCombineMethod

	self assert: 'hello: 2 world: 3' equals: (BPExampleToTest new combineMethod: 'hello:world:' withParameters: #(2 3)).