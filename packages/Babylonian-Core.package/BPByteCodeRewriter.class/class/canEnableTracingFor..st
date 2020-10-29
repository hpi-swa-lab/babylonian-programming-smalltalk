private
canEnableTracingFor: aCompiledMethod
	
	| encoder |
	
	"aCompiledMethod numTemps + 1 <= 63 ifFalse: [^ false]."
	
	encoder := aCompiledMethod encoderClass new 
		streamToMethod: aCompiledMethod;
		yourself.
		
	(self getConfig: aCompiledMethod) nopPositions do: [:data | | type interval |		
		type := data first.
		interval := data second.
		
		type == #beforeBlock ifTrue: [ | closure |
			(encoder instVarNamed: #stream) position: interval start + 1.
			closure := self parseClosureCreationByteCodeFor: aCompiledMethod withEncoder: encoder.
			((closure at: #numTemps) + 1) <= 15 ifFalse: [^ false]
		]].

	^ true