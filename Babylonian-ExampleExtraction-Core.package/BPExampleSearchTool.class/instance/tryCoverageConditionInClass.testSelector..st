searching
tryCoverageConditionInClass: aClass testSelector: aSymbol
	
	| coverage |
	
	self tryCoveragePreference ifFalse: [^ true].
	
	coverage := TestCoverage on: self methodReference.
	coverage install.
	aClass run: aSymbol.
	coverage uninstall.
	
	^ coverage hasRun