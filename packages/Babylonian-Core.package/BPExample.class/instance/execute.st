tracing
execute

	^ self newReceiver 
		perform: self method selector 
		withArguments: self newArguments