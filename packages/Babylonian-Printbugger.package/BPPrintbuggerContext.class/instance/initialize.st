initialize-release
initialize

	super initialize.
	
	methodToCount := Dictionary new.
	keysCountCache := 0.
	exampleToIgnoredAnnotations := Dictionary new.