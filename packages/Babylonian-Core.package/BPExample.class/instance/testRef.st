accessing
testRef

	^ testRef ifNil: [self testRef: (BPExampleToTestSerializer serialize: self). testRef]