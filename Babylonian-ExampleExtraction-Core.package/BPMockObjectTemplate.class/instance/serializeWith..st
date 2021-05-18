serialization
serializeWith: aNumber
	
	| serialization |
	
	serialization := '{'.
	serialization := serialization, 'receiverclass: ', receiver class printString, '.'.
	serialization := serialization, ' id: ', aNumber, '.'.
	serialization := serialization, ' insVars: {'.
	instVarNumbersAndValues keysAndValuesDo: [:insVarNumber :value |
		serialization := serialization, ' num: ', insVarNumber asString, ', value: ', value class printString, '.'].
	serialization := serialization, '}}'.
	
	self flag: #todo. "instead of value class put actual value or reference id there"
	
	^ serialization