binding
bindingOf: varName
	
	^ varName = #exampleReceiver 
		ifTrue: [#exampleReceiver -> self receiver]
		ifFalse: [arguments associations detect: [:assoc |
				assoc key = varName]]