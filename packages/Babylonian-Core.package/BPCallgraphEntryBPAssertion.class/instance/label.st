as yet unclassified
label
	
	^ String streamContents: [:s | s
		nextPutAll: 'Assertion hit';
		tab;
		nextPutAll: (self traceValue tracedValue ifTrue: ['passed'] ifFalse: ['failed']);
		tab;
		nextPutAll: 'id: ';
		nextPutAll: self id asString "assertion id"]