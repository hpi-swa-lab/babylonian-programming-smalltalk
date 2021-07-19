updating
update: aSymbol
	
	aSymbol == lampOnSelector ifTrue: [self lampOn].
	aSymbol == lampOffSelector ifTrue: [self lampOff].