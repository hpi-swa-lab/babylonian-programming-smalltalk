3 - disable tracing
privDisableTracingFor: method
	
	| config encoder |
	config := self getConfig: method.
	encoder := method encoderClass new 
		streamToMethod: method;
		yourself.
	
	config nopPositions do: [:data | | type interval |
		type := data first.
		interval := data second.
		
		"overwrite code with NOPs"
		(encoder instVarNamed: #stream) position: interval start - 1.
		encoder genNops: interval size.
		
		"decrease number of temps of blocks by 1"
		type == #beforeBlock ifTrue: [ | closure |
			closure := self parseClosureCreationByteCodeFor: method withEncoder: encoder.
			self rewriteClosureCreationByteCodeFor: method 
				withEncoder: encoder 
				numArgs: (closure at: #numArgs) 
				numTemps: (closure at: #numTemps) - 1].
		
		self assert: encoder methodStreamPosition == interval stop].

	config state: #inactive.
	self assert: (self hasInactiveTracing: method)