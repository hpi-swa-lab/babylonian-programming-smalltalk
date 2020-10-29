private
hasTracing: aCompiledMethod
	
	^ (self hasActiveTracing: aCompiledMethod) or: [self hasInactiveTracing: aCompiledMethod]