0 - setup
instrumentationMode: aSymbol
	
	self assert: (aSymbol == #fast or: [aSymbol == #slow]).
	InstrumentationMode := aSymbol