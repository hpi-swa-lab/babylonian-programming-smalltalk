tracing
customEvent: aSymbol data: anObject
	

	events nextPut: #custom.
	events nextPut: aSymbol.
	events nextPut: anObject