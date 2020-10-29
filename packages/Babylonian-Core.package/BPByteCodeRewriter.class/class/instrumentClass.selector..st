1 - instrument
instrumentClass: aClass selector: aSymbol
	
	| method |
	method := aClass compiledMethodAt: aSymbol.
	(method primitive ~= 0 or: [method isQuick]) ifTrue: [^ self].
	
	(self shouldNeverInstrument: aClass selector: aSymbol) ifTrue: [
		"UIManager default inform: 'Skipping instrumentation of ', aClass, ' >> #', aSymbol."
		^ self].
	
	#bpCallgraph withLayerDo: [aClass recompile: aSymbol].
	self assert: (self hasInactiveTracing: (aClass compiledMethodAt: aSymbol)).