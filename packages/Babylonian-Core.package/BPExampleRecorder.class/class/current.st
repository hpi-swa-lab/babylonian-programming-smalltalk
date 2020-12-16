instance access
current

	^ Processor activeProcess 
		environmentAt: #bpExampleRecorder 
		ifAbsent: [self error: 'No recording running']