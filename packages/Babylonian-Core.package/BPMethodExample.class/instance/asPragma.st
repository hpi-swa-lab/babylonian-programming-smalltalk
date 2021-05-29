serialization
asPragma
	
	"'exampleNamed:' 'active:'? 'setUp:'? 'tearDown:'? 'self:'? 'with'*"
	^ '<exampleNamed: ''{1}''{2}{3}{4}{5}>' format: {
		self exampleName.
		self setUpScript ifNil: [''] ifNotNil: [:setUpScript | ' setUp: ' , setUpScript printString].
		self tearDownScript ifNil: [''] ifNotNil: [:tearDownScript | ' tearDown: ' , tearDownScript printString].
		self receiverConstructor ifNil: [''] ifNotNil: [:aReceiverConstructor | ' self: ' , aReceiverConstructor printString].
		self argumentScripts ifEmpty: [''] ifNotEmpty: [(self argumentScripts collect: [:anArgumentScript | ' with: ' , anArgumentScript printString]) join]}