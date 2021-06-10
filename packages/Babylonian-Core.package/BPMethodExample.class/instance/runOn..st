tracing
runOn: aState
	
	^ aState receiver
		perform: self method selector 
		withArguments: aState arguments