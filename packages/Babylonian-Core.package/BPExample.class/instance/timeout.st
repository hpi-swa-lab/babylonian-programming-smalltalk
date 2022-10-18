accessing
timeout

	^ timeout ifNil: [timeout := 30000]