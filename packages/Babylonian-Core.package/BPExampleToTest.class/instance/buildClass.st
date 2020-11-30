building
buildClass

	^ Object subclass: (self serializedClassName) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: (self serializedClassCategory)