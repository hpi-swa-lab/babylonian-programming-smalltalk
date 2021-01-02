example methods
errorMethod: aNumber
	<exampleNamed: 'working' expectedResult: '0.5' active: true self: '' with: '2'>
	<exampleNamed: 'throws error' expectedResult: 'ZeroDivide' active: true self: '' with: '0'>
	^ 1 / aNumber