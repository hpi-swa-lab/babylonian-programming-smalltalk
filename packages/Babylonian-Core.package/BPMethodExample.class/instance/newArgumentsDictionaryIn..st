accessing
newArgumentsDictionaryIn: aMethodExampleState
	
	^ OrderedDictionary newFrom: (self argumentNames
		with: ((self newArgumentsIn: aMethodExampleState) first: self argumentNames size)
		collect: [:name :value | name asSymbol -> value])