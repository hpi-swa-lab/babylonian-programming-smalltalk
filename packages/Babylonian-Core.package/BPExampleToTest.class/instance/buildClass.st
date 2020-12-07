building
buildClass

	^ Smalltalk 
		at: (self serializedClassName asSymbol) 
		ifAbsent: [Object 
			subclass: (self serializedClassName asSymbol)
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: (self serializedClassCategory)]