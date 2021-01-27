serialization
asPragma
	
	"'exampleNamed:' 'active:'? 'setUp:'? 'tearDown:'? 'self:'? 'expectedResult:'? 'with'*"
	^ '<exampleNamed: ''{1}''{2}{3}{4}{5}{6}{7}{8}>' format: {
		self exampleName.
		self isActive ifFalse: [''] ifTrue: [' active: true'].
		self serialize ifNil: [''] ifNotNil: [:testRef | ' testRef: ' , testRef printString].
		self setUpScript ifNil: [''] ifNotNil: [:setUpScript | ' setUp: ' , setUpScript printString].
		self tearDownScript ifNil: [''] ifNotNil: [:tearDownScript | ' tearDown: ' , tearDownScript printString].
		self receiverConstructor ifNil: [''] ifNotNil: [:aReceiverConstructor | ' self: ' , aReceiverConstructor printString].
		self expectedResult ifNil: [''] ifNotNil: [:anExpectedResult | ' expectedResult: ' , anExpectedResult printString].
		self argumentScripts ifEmpty: [''] ifNotEmpty: [(self argumentScripts collect: [:anArgumentScript | ' with: ' , anArgumentScript printString]) join]}
