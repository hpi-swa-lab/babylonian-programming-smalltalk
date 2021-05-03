private
hasInactiveTracing: aCompiledMethod
	
	^ (self getConfig: aCompiledMethod) ifNil: [false] ifNotNil: [:tracer | tracer isInactive]