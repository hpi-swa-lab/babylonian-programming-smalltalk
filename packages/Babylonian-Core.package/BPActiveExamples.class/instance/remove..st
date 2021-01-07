accessing
remove: aBPExample
	
	mutex critical: [
		examples removeKey: aBPExample exampleReference ifAbsent: ["dont care"].
		aBPExample ensureTerminatedProcess].
	aBPExample liveSpecimen do: [:aSpecimen | aSpecimen removeDependent: self].