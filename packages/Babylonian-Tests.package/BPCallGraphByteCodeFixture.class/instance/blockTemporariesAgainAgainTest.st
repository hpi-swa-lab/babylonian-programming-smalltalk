8 - block temporaries again
blockTemporariesAgainAgainTest
	
	| g1 |
	g1 := 1.
	
	[:a1 :a2 | | l1 l2 l3 l4 l5 |
		self assert: a1 == #a1.
		self assert: a2 == #a2.
		self assert: l1 == nil.
		self assert: l2 == nil.
		self assert: l3 == nil.
		self assert: l4 == nil.
		self assert: l5 == nil.
		
		self assert: g1 == 1.
		g1 := g1 * 2.
		
		l1 := l2 := l3 := l4 := l5 := $l] value: #a1 value: #a2