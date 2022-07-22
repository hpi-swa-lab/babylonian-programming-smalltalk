accessing
newArgumentsDictionary
	
	^ OrderedDictionary newFrom: (self argumentNames
		with: (self newArguments  first: self argumentNames size)
		collect: [:name :value | name asSymbol -> value])