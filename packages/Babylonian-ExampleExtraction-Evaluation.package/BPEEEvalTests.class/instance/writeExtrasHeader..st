file
writeExtrasHeader: aFileStream
	
	aFileStream
		nextPutAll: 'className';
		nextPutAll: self separator;
		nextPutAll: 'methods total';
		nextPutAll: self separator;
		nextPutAll: 'c_packageName_MethodSelector total';
		nextPutAll: self separator;
		nextPutAll: 'c_coverage total';
		nextPutAll: self separator;
		nextPutAll: 'c_packageName_coverage total'.