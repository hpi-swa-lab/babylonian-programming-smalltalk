requestor compatibility
hasBindingOf: aString
	
	^ aString asSymbol = #exampleReceiver or: [arguments includesKey: aString asSymbol]