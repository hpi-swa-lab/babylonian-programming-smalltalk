serialization
asPragma
	
	"'testRef' 'active:'? 'setUp:'? 'tearDown:'? "
	^ '<testRef: ''{1}''{2}{3}{4}>' format: {
		self testRef.
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self setUpScript ifNil: [''] ifNotNil: [:setUpScript | ' setUp: ' , setUpScript printString].
		self tearDownScript ifNil: [''] ifNotNil: [:tearDownScript | ' tearDown: ' , tearDownScript printString]}
