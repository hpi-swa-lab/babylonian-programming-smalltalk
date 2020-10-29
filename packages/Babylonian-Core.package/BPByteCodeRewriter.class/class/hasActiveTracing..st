private
hasActiveTracing: aCompiledMethod
	
	^ (self getConfig: aCompiledMethod) ifNil: [false] ifNotNil: [:config | config isActive]