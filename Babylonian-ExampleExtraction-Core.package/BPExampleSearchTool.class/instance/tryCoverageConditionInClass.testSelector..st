searching
tryCoverageConditionInClass: aClass testSelector: aSymbol
	
	| coverage "fileStream" |
	
	self tryCoveragePreference ifFalse: [^ true].
	
	"fileStream := FileDirectory default fileNamed: 'tmp_log.txt'.
	fileStream truncate: 0.
	fileStream reset.
	fileStream
		nextPutAll: aClass printString, '>>', aSymbol asString, '.';
		nextPutAll: Character cr asString.
	fileStream close."
	
	coverage := TestCoverage on: self methodReference.
	coverage install.
	aClass run: aSymbol.
	coverage uninstall.
	
	^ coverage hasRun