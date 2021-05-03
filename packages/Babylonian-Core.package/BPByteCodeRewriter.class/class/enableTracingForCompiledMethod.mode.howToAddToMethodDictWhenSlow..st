2 - enable tracing
enableTracingForCompiledMethod: oldMethod mode: aSymbol howToAddToMethodDictWhenSlow: aBlock
	
	| newMethod |
	oldMethod isCompiledMethod ifFalse: [^ self handleNonCompiledMethod: oldMethod action: #enableTracingForCompiledMethod:mode:howToAddToMethodDictWhenSlow: mode: aSymbol].
	(self hasInactiveTracing: oldMethod) ifFalse: [^ self].
	self assert: oldMethod primitive == 0.
	
	(self canEnableTracingFor: oldMethod) 
		ifFalse: [^ UIManager default inform: 'Cannot enable tracing for ', oldMethod methodClass, ' >> ', oldMethod selector, '.'].
		
	self assert: ({#slow . #fast} includes: aSymbol).
	self haltOnce.
	aSymbol == #slow ifTrue: [newMethod := self copyCompiledMethod: oldMethod].
	aSymbol == #fast ifTrue: [newMethod := oldMethod.
		"newMethod objectAt: 1 put: (self adjustNumTemps: oldMethod numTemps + 1 in: oldMethod header)"].
	
	self privEnableTracingFor: newMethod.	
	
	aSymbol == #slow ifTrue: [
		oldMethod isInstalled 
			ifTrue: [	aBlock value: newMethod]
			ifFalse: [oldMethod becomeForward: newMethod]].
		
	oldMethod selector flushCache