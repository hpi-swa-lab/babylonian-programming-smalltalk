6 - block temporaries
blockTemporariesTest
	| outerR outerRW |
	outerR := 'outerR'.
	outerRW := 'outerRW'.
	
	[:arg1 :arg2 | | t1 t2 t3 | 
		self assert: arg1 = 'arg1'.
		self assert: arg2 = 'arg2'.
		self assert: t1 isNil.
		self assert: t2 isNil.
		self assert: t3 isNil.
		t1 := 't1'.
		t2 := 't2'.
		t3 := 't3'.
		self assert: t1 = 't1'.
		self assert: t2 = 't2'.
		self assert: t3 = 't3'.
		self assert: outerR = 'outerR'.
		self assert: outerRW = 'outerRW'.
		outerRW := 'outerRW*'.
		self assert: outerRW = 'outerRW*'] value: 'arg1' value: 'arg2'.