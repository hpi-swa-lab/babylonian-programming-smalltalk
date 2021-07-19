serialization
serializeWith: aNumber
	
	| serialization |
	serialization := '{isLeaf: true, '.
	serialization := serialization, 'isClass: ', (receiver isKindOf: Class) printString, '}'.
	serialization := serialization, 'isMetaClass: ', (receiver isKindOf: Metaclass) printString, '}'.
	serialization := serialization, 'value: ', receiver printString, '}'.
	^ serialization