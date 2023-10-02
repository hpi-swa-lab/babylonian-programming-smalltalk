binding
hasBindingThatBeginsWith: varName
	
	^ (#(self) , arguments keys anySatisfy: [:key | key beginsWith: varName])
		ifTrue: [true]
		ifFalse: [super hasBindingThatBeginsWith: varName]