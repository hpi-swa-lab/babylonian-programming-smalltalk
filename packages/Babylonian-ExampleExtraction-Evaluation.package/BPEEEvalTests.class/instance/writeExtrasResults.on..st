file
writeExtrasResults: allFoundTests on: aFileStream
	
	| resultsPerClasses |
	resultsPerClasses := Dictionary new.
	allFoundTests do: [:result | | resultsPerClass |
		resultsPerClass := resultsPerClasses at: (result at: self classKey ifAbsent: [#null]) ifAbsentPut: [OrderedCollection new].
		resultsPerClass add: result].
	
	resultsPerClasses keysAndValuesDo: [:className :resultsPerClass | | numMethods numPnMs numCo numPnCo |
		numMethods := 0.
		numPnMs := 0.
		numCo := 0.
		numPnCo := 0.
		resultsPerClass do: [:result |
			numMethods := numMethods + 1.
			(result at: self keyMethodSelectorPackageName ifAbsent: [0]) > 0 ifTrue: [numPnMs := numPnMs + 1].
			(result at: self keyCoverage ifAbsent: [0]) > 0 ifTrue: [numCo := numCo + 1].
			(result at: self keyCoveragePackageName ifAbsent: [0]) > 0 ifTrue: [numPnCo := numPnCo + 1]].
		
		aFileStream
			nextPutAll: self cr;
			nextPutAll: className printString;
			nextPutAll: self separator;
			nextPutAll: numMethods printString;
			nextPutAll: self separator;
			nextPutAll: numPnMs printString;
			nextPutAll: self separator;
			nextPutAll: numCo printString;
			nextPutAll: self separator;
			nextPutAll: numPnCo printString].