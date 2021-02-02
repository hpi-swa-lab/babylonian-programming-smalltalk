initialize-release
initializeFromDeserialized: aBPExample
	
	super initializeFromDeserialized: aBPExample.

	aBPExample script ifNotNil: [ self script: aBPExample script].