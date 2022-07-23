tests
tearDown

	SystemChangeNotifier uniqueInstance doSilently: [
		self class removeSelector: self fixtureMethodSelector].
	
	browser := browserWindow := nil.