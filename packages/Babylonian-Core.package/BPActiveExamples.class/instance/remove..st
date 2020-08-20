accessing
remove: aBPExample

	mutex critical: [
		examples removeKey: aBPExample ifAbsent: ["dont care"].
		aBPExample ensureTerminatedProcess]