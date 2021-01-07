accessing
add: aBPExample
	
	mutex critical: [examples at: aBPExample exampleReference put: true].
	aBPExample liveSpecimen do: [:aSpecimen | aSpecimen addDependent: self].