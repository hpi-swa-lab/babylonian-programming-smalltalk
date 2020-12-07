accessing
add: aBPExample
	
	mutex critical: [examples at: aBPExample put: true].
	aBPExample liveSpecimen do: [:aSpecimen | aSpecimen addDependent: self].