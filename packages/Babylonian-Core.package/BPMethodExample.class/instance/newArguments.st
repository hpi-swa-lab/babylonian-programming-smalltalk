accessing
newArguments

	^ ((argumentScripts first: self argumentNames size) 
		collect: [:script | Compiler evaluate: script])
		collect: [:argumentObject | self resolveLiveSpecimen: argumentObject]
