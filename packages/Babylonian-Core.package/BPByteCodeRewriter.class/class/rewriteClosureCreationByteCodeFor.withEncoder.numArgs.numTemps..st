private
rewriteClosureCreationByteCodeFor: aCompiledMethod withEncoder: encoder numArgs: numArgs numTemps: numTemps
	

	self assert: (aCompiledMethod at: encoder methodStreamPosition + 1) == 143.
	self assert: (numArgs <= 15 and: [numArgs >= 0]).
	self assert: (numTemps <= 15 and: [numTemps >= 0]).

	aCompiledMethod 
		at: encoder methodStreamPosition + 1 + 1
		put: numArgs + (numTemps bitShift: 4)