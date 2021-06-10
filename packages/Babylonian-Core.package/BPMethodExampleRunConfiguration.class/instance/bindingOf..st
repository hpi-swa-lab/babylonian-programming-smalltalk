binding
bindingOf: varName
	
	| value |
	varName = #self 
		ifTrue: [value := self receiver]
		ifFalse: [value := self arguments at: (self example argumentNames indexOf: varName) ifAbsent: [nil]].
	^ varName -> value