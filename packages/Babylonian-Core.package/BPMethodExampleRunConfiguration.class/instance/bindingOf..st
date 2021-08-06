binding
bindingOf: varName
	
	^ varName = #self 
		ifTrue: [#self -> self receiver]
		ifFalse: [arguments associations detect: [:assoc |
				assoc key = varName]]