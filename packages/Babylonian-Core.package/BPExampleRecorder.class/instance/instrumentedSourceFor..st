private-instrumenting
instrumentedSourceFor: aMethod
	
	| proceedCall selector |
	proceedCall := (1 to: aMethod numArgs) inject: 'self proceed' into: [:source :i |
		i = 1
			ifTrue: [source, ': arg1 ']
			ifFalse: [source, 'with: arg', i asString, String space]].
	selector := (aMethod selector keywords collectWithIndex: [:keyword :index | 
		(keyword endsWith: ':')
			ifTrue: [keyword , 'arg', index asString]
			ifFalse: [keyword]]) joinSeparatedBy: String space.
	
	^ selector, 
		String cr, String tab,
		'<layer: #bpExampleRecording>
		BPExampleRecorder current recordFrom: thisContext.
		^ ' , proceedCall.