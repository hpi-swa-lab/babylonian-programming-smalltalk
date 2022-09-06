initialize-release
initialize

	super initialize.
	worldExampleState := BPWorldExampleState instance.
	worldExampleState addDependent: self.