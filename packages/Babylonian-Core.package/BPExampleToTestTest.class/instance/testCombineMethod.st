tests
testCombineMethod

	self assert: (BPExampleToTest new combineMethod: 'hello:world:' withParameters: #(2 3)) equals: 'hello: 2 world: 3'