1 - instrument
instrumentClass: aClass selector: aSymbol
	
	| method |
	method := aClass compiledMethodAt: aSymbol.
	(method primitive ~= 0 or: [method isQuick]) ifTrue: [^ self].
	
	(self shouldNeverInstrument: aClass selector: aSymbol) ifTrue: [
		"UIManager default inform: 'Skipping instrumentation of ', aClass, ' >> #', aSymbol."
		^ self].
		
	[#bpCallgraph withLayerDo: [aClass recompile: aSymbol]] on: SyntaxErrorNotification do: [:e | 
		"this happens when the method already has close to the maximum number of temps or literals and our bytecode rewriting overflowed that maximum." 
		"UIManager default inform: 'Could not instrument ', aClass, ' >> #', aSymbol, ' because it contains too many temps or literals'."
		^ self].
	self assert: (self hasInactiveTracing: (aClass compiledMethodAt: aSymbol)).