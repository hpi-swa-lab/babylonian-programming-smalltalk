tracing
traceInBackground
	
	^ self traceInBackgroundWithCallgraph: (self class alwaysGenerateCallgraph ifTrue: [#byteCode] ifFalse: [#none])
