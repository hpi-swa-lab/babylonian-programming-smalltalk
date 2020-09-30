initialize-release
initializeFromMethod: compiledMethod

	self argumentScripts: ((1 to: compiledMethod numArgs) collect: [:i | ''])