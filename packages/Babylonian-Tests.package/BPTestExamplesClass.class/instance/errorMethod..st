example methods
errorMethod: aNumber
	<exampleNamed: 'working' active: true self: '' with: '2' expectedResult: '0.5' >
	<exampleNamed: 'throws error' active: true self: '' with: '0' expectedResult: 'ZeroDivide' >
	^ 1 / aNumber