accessing
arguments

	^ (argumentScripts 
		collect: [:script | Compiler evaluate: script])
		collect: [:argumentObject | self resolveLiveSpecimen: argumentObject]