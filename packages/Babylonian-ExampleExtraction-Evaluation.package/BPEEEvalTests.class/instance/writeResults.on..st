file
writeResults: allFoundTests on: aFileStream
	

	allFoundTests do: [:result | 
		aFileStream
			nextPutAll: self cr;
			nextPutAll: result first printString;
			nextPutAll: self separator;
			nextPutAll: result second printString;
			nextPutAll: self separator;
			nextPutAll: (result third at: self keyClassName) printString;
			nextPutAll: self separator;
			nextPutAll: (result third at: self keyMethodSelector) printString;
			nextPutAll: self separator;
			nextPutAll: (result third at: self keyMethodSelectorClassName) printString;
			nextPutAll: self separator;
			nextPutAll: (result third at: self keyCoverage) printString].