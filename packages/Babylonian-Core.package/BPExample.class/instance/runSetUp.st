executing
runSetUp
	
	"The default is to run without any prepared state. Running with a temporary prepared state does not make sense
	as any side effects on the prepared state would immediately be garbage collected."
	^ self runSetUpWith: nil