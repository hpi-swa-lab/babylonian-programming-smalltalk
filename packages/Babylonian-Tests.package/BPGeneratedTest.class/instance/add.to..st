helper
add: aNumber1 to: aNumber2
	<exampleNamed: 'foo' active: true self: 'BPGeneratedTest new base: 10' with: '2' with: '3' expectedResult: '15'>
	<exampleNamed: 'bar' active: true self: 'BPGeneratedTest new base: 10' with: '-2' with: '3' expectedResult: 'Error'>
	<exampleNamed: 'basic' active: true self: 'BPGeneratedTest new base: 8' with: '5' with: '0'>
	
	aNumber2 = 40 ifTrue: [^ #(2 '323')].
	aNumber2 = 42 ifTrue: [^ 'Hello'].
	
	^ (aNumber1 < 0) 
			ifTrue: [self error] 
			ifFalse: [aNumber1 + aNumber2 + self base]