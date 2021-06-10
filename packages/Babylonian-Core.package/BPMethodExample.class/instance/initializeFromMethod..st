initialize-release
initializeFromMethod: compiledMethod
	
	self argumentScripts: ((1 to: compiledMethod numArgs) collect: [:index | '']).
	self receiverConstructor: compiledMethod methodClass name asString , ' new'.