5 - mixed block return test
mixedBlockReturnTest: hardReturn

	[
		hardReturn ifTrue: [^ #hardReturn]	
	] value.
	^ #softReturn