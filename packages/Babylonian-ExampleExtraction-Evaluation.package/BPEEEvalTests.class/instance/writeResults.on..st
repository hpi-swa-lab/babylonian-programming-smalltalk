file
writeResults: allFoundTests on: aFileStream
	

	allFoundTests do: [:result | 
		aFileStream
			nextPutAll: self cr;
			nextPutAll: (result at: self classKey ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self methodSelectorKey ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyClassName ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyPackageName ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyMethodSelector ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyMethodSelectorClassName ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyMethodSelectorPackageName ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyMethodSelectorClassNamePackageName ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyCoverage ifAbsent: [#null]) printString;
			nextPutAll: self separator;
			nextPutAll: (result at: self keyCoveragePackageName ifAbsent: [#null]) printString].