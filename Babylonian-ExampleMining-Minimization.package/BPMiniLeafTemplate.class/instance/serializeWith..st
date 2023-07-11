serialization
serializeWith: aNumber

	^ '{isLeaf:true, isClass: {1}, isMetaClass: {2}, value: {3}}>' format: {
	(receiver isKindOf: Class) printString . 
	(receiver isKindOf: Metaclass) printString .
	receiver printString }