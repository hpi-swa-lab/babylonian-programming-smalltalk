accessing
initializeArgumentsDictionaryIn: runConfiguration
	
	(self argumentNames 
		with: (argumentScripts first: self argumentNames size)
			collect: [:name :script | name asSymbol -> script])
		inject: runConfiguration into: [:config :assoc |
			| argument |
			argument := Compiler evaluate: assoc value notifying: runConfiguration.
			config 
				atArgumentNamed: assoc key 
				put: (self resolveLiveSpecimen: argument).
			config]