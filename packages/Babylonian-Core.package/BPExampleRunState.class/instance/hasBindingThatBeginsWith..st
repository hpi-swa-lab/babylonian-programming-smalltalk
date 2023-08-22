binding
hasBindingThatBeginsWith: aString 
	
	^ state keys anySatisfy: [:key | key isString and: [key beginsWith: aString]]