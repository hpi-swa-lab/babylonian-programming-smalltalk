private
rewriteHeaderOf: aCompiledMethod numTemps: aNumber
	
	aCompiledMethod objectAt: 1 put: (self adjustNumTemps: aNumber in: aCompiledMethod header)