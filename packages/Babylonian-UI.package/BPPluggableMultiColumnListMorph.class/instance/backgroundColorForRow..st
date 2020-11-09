as yet unclassified
backgroundColorForRow: aNumber
	
	^ backgroundColorList at: (self modelIndexFor: aNumber) ifAbsent: [nil]