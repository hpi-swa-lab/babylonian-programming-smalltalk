initialize-release
initialize

	super initialize.
	isActive := false.
	isShowingAnnotations := true.
	traceInformation := BPExampleTraceInformation new.
	traceInformation addDependent: self.