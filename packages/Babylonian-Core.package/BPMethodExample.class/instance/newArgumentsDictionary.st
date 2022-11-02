accessing
newArgumentsDictionary
	
	^ (((self argumentNames with: (argumentScripts first: self argumentNames size))
		collect: [:name :script | name asSymbol -> script])
		inject: IdentityDictionary new into: [:dictionary :assoc |
			dictionary at: assoc key put: (Compiler evaluate: assoc value notifying: dictionary)])
		collect: [:argumentObject | self resolveLiveSpecimen: argumentObject]