0 - setup
instrumentationMode: aSymbol during: aBlock
	
	| old |
	old := InstrumentationMode.
	self instrumentationMode: aSymbol.
	^ aBlock ensure: [InstrumentationMode := old]