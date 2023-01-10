*Babylonian-Core
bpResolveReferenceDynamically: aSymbol in: aContext

	(aContext tempNames includes: aSymbol) ifTrue: [
		^ aContext namedTempAt: (aContext tempNames indexOf: aSymbol)].
	(self class instVarNames includes: aSymbol) ifTrue: [
		^ self instVarNamed: aSymbol].
	^ (KeyNotFound key: aSymbol) signal