7 - block temporaries again
blockTemporariesAgainTest: n
	
	n timesRepeat: [
		| a |
		self assert: a isNil.
		a := 42.
		self assert: a = 42]