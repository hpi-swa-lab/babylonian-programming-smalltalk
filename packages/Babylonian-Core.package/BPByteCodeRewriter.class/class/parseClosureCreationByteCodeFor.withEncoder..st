private
parseClosureCreationByteCodeFor: aCompiledMethod withEncoder: encoder
	| argsAndTemps numArgs numTemps size |
	
	self assert: (aCompiledMethod at: encoder methodStreamPosition + 1) == 143.
	
	argsAndTemps := aCompiledMethod at: encoder methodStreamPosition + 1 + 1.
	numArgs := argsAndTemps bitAnd: 2r1111.
	numTemps := argsAndTemps bitShift: -4.
	size := ((aCompiledMethod at: encoder methodStreamPosition + 1 + 2) bitShift: 8)
		+ (aCompiledMethod at: encoder methodStreamPosition + 1+ 3).
		
	^ Dictionary withAll: {
		#numArgs -> numArgs.
		#numTemps -> numTemps.
		#size -> size
	}