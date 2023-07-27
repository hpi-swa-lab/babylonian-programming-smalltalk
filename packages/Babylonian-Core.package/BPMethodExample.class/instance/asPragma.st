serialization
asPragma
	
	"'exampleNamed:' 'setUp:'? 'tearDown:'? 'self:'? 'with'*"
	^ '<exampleNamed: ''{1}''{2}{3}{4}{5}>' format: {
		self exampleName.
		self setUpScript ifNil: [''] ifNotNil: [:setUpScript | ' setUp: ' , setUpScript printString].
		self tearDownScript ifNil: [''] ifNotNil: [:tearDownScript | ' tearDown: ' , tearDownScript printString].
		self receiverConstructor ifNil: [''] ifNotNil: [:aReceiverConstructor | 
			aReceiverConstructor isLiveSpecimenReference 
				ifFalse: [' self: ' , aReceiverConstructor printString]
				ifTrue: [' self: ' , {aReceiverConstructor keyword . aReceiverConstructor printString} printString]].
		self argumentScripts ifEmpty: [''] ifNotEmpty: [(self argumentScripts collect: [:anArgumentScript | 
			' with: ' , (anArgumentScript isLiveSpecimenReference 
				ifFalse: [anArgumentScript printString]
				ifTrue: [{anArgumentScript keyword . anArgumentScript printString} printString])]) join]}