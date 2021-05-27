mocking
runToBeMockedMethod
	
	receiver printString.
	arguments do: [:each | each printString].
	receiver perform: self methodSelector withArguments: arguments.