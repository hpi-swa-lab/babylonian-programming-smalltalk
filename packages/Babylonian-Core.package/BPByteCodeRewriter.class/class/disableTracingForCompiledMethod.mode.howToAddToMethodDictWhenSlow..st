3 - disable tracing
disableTracingForCompiledMethod: oldMethod mode: aSymbol howToAddToMethodDictWhenSlow: aBlock
	
	| newMethod |
	oldMethod isCompiledMethod ifFalse: [^ self handleNonCompiledMethod: oldMethod action: #disableTracingForCompiledMethod:mode:howToAddToMethodDictWhenSlow: mode: aSymbol].
	(self hasActiveTracing: oldMethod) ifFalse: [^ self].
	
	self assert: ({#slow . #fast} includes: aSymbol).
	
	aSymbol == #slow ifTrue: [newMethod := self copyCompiledMethod: oldMethod].
	aSymbol == #fast ifTrue: [newMethod := oldMethod.
		"newMethod objectAt: 1 put: (self adjustNumTemps: oldMethod numTemps - 1 in: oldMethod header)"].
		
	self privDisableTracingFor: newMethod.
	
	aSymbol == #slow ifTrue: [
		oldMethod isInstalled 
			ifTrue: [
				aBlock value: newMethod.
				oldMethod selector flushCache]
			ifFalse: [oldMethod becomeForward: newMethod]]