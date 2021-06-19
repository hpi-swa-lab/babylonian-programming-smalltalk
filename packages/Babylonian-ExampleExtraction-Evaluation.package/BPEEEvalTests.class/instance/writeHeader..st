file
writeHeader: aFileStream
	
	aFileStream
		nextPutAll: 'className';
		nextPutAll: self separator;
		nextPutAll: 'methodName';
		nextPutAll: self separator;
		nextPutAll: 'c_className';
		nextPutAll: self separator;
		nextPutAll: 'c_methodSelector';
		nextPutAll: self separator;
		nextPutAll: 'c_className_MethodSelector';
		nextPutAll: self separator;
		nextPutAll: 'c_packageName_MethodSelector';
		nextPutAll: self separator;
		nextPutAll: 'c_packageName_className_MethodSelector';
		nextPutAll: self separator;
		nextPutAll: 'c_coverage';
		nextPutAll: self separator;
		nextPutAll: 'c_packageName_coverage'.