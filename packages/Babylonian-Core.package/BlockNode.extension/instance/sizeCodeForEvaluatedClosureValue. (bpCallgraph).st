*Babylonian-Core-Callgraph-ByteCode
sizeCodeForEvaluatedClosureValue: encoder
	<layer: #bpCallgraph>
	"The closure value primitives push the arguments and the copied values.
	 The compiler guarantees that any copied values come before all local temps.
	 So on closure activation we only need to push nils for the remaining temporaries."
	^(encoder sizePushNClosureTemps: temporaries size)
	+ (self
		reindexingLocalsDo: [self sizeCodeForEvaluatedValue: encoder]
		encoder: nil "don't store temps yet")
	+ (self returns ifTrue: [0] ifFalse: ["<custom code>"(self additionalReturnSize: encoder returns: false)"</custom code>" + encoder sizeReturnTopToCaller])
	"<custom code>""+ ((self isRootBlock: encoder) ifFalse: [self additionalSize: encoder] ifTrue: [0])""</custom code>"