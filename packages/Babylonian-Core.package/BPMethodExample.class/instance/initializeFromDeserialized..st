initialize-release
initializeFromDeserialized: aBPExample
	
	super initializeFromDeserialized: aBPExample.

	aBPExample receiverConstructor ifNotNil: [ self receiverConstructor: aBPExample receiverConstructor].
	aBPExample argumentScripts ifNotNil: [ self argumentScripts: aBPExample argumentScripts].