initialize-release
initialize

	super initialize.
	isActive := false.
	traceInformation := BPExampleTraceInformation new.
	traceInformation addDependent: self.