private-recording
uninstallMyselfFromProcess
	
	Processor activeProcess 
		environmentRemoveKey: #bpExampleRecorder
		ifAbsent: ["Good for us"]