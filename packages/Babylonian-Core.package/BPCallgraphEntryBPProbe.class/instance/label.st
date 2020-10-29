as yet unclassified
label
	
	^ String streamContents: [:s | s
		nextPutAll: 'Probe hit';
		tab;
		nextPutAll: 'value: ';
		nextPutAll: (self traceValue tracedValue printStringLimitedTo: 300);
		tab;
		nextPutAll: 'id: ';
		nextPutAll: self id asString "probe id"]