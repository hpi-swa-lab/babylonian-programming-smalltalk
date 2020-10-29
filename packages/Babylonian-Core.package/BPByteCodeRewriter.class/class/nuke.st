x - nuking
nuke
	
	| marker handler methods |
	marker := Environment current declarationOf: #BPByteCodeCallgraphTracer.
	
	methods := Set new.
	handler := [:method | (method hasLiteral: marker) ifTrue: [methods add: method]].
	Smalltalk allClassesDo: [:class |
		class methodsDo: handler.
		class class methodsDo: handler].
	
	CSLayeredMethod pauseFlushingCachesDuring: [
		methods
			do: [:method | method methodClass recompile: method selector] 
			displayingProgress: [:method | 'Recompiling ', method methodClass, ' >> #', method selector] 
			every: 100].
		
	self teardown