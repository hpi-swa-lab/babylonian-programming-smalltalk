5 - teardown
uninstallWrapper: aSymbol
	
	| method |
	method := Context >> aSymbol.
	[method isMwMethodWrapper] whileTrue: [
		method uninstall.
		method := Context >> aSymbol]