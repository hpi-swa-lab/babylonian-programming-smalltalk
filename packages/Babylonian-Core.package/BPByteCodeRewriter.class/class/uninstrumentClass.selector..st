4 - uninstrument
uninstrumentClass: aClass selector: aSymbol
	
	(aClass compiledMethodAt: aSymbol) primitive ~= 0 ifTrue: [^ self].
	
	aClass recompile: aSymbol.
	self assert: (self hasTracing: (aClass compiledMethodAt: aSymbol)) not