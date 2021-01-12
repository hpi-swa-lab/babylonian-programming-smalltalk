building
buildClass

	^ Smalltalk 
		at: (self serializedClassName asSymbol) 
		ifAbsent: [TestCase 
			subclass: (self serializedClassName asSymbol)
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: (self serializedClassCategory)]