classification
colorFor: aMethodReference having: aCollectionOfColors
	
	^ methodToCount at: aMethodReference 
		ifPresent: [:aCount | aCollectionOfColors at: {(methodToCount keys indexOf: aMethodReference) \\\ aCollectionOfColors size. 1} max] 
		ifAbsent: [Color gray]