private - ui
rememberThat: aMorph hasACollapsedStateOf: aBoolean
	
	"This is a horrible hack to preserve the open/closedness of example
	morphs. This can go as soon as examples are the same across incarnations
	of a method and we can reuse the corresponding example morphs."
	
	(ExampleCollapsedState ifNil: [ExampleCollapsedState := Dictionary new])
		at: aMorph example uniqueIdentifier put: aBoolean