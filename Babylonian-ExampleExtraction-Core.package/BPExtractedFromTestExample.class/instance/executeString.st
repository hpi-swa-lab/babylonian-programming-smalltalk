tracing
executeString
	
"Maybe this should be more like TestCase runCase"
	
	^ self extractedClassName, ' new setUp; ', self extractedMethodSelector, '; tearDown'