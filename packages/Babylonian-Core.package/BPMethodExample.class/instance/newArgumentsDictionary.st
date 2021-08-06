accessing
newArgumentsDictionary
	
	^ OrderedDictionary newFrom: (self argumentNames 
		with: self newArguments
		collect: [:name :value | name asSymbol -> value])