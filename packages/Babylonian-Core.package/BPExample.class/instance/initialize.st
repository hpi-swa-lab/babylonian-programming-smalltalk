initialize-release
initialize
	
	super initialize.
	isActive := false.
	traceInformation := BPExampleTraceInformation new.
	receiverConstructor := String empty.
	argumentScripts := OrderedCollection new.