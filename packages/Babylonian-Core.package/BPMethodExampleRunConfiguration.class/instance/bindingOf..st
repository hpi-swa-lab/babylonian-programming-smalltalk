binding
bindingOf: varName
	
	^ varName = #self 
		ifTrue: [state at: #self ifAbsentPut: [self receiver]]
		ifFalse: [arguments associations 
					detect: [:assoc | assoc key = varName]
					ifNone: [super bindingOf: varName]]