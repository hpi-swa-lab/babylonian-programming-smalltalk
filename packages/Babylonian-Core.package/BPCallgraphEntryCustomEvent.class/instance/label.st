as yet unclassified
label
	
	^ String streamContents: [:s | s
		nextPutAll: 'Custom Event';
		tab;
		nextPutAll: type;
		tab;
		nextPutAll: (data printStringLimitedTo: 300)]