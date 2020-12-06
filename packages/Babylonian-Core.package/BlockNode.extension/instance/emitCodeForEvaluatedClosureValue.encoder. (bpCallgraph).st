*Babylonian-Core-Callgraph-ByteCode
emitCodeForEvaluatedClosureValue: stack encoder: encoder
	
	<layer: #bpCallgraph>
	| position |
	position := stack position.
	stack position: arguments size + "inner temporaries" temporaries size + "copied temporaries" copiedValues size.
	encoder genPushNClosureTemps: temporaries size.
	self
		reindexingLocalsDo: [self emitCodeForEvaluatedValue: stack encoder: encoder]
		encoder: encoder.
	self returns ifFalse:
		["<custom code>"self emitNOPs: encoder stack: stack n: (self additionalReturnSize: encoder returns: false) type: #endBlock."</custom code>"
		 encoder genReturnTopToCaller. "blockReturn"
		 pc := encoder pc].
	stack position: position