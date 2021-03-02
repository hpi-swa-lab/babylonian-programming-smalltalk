as yet unclassified
label
	
	^ String streamContents: [:s | s
		nextPutAll: 'Probe hit';
		tab;
		nextPutAll: '';
		nextPutAll: (self traceValue tracedValue printStringLimitedTo: 300);
		tab;
		nextPutAll: '<- ';
		nextPutAll: self enclosedSourceCode]