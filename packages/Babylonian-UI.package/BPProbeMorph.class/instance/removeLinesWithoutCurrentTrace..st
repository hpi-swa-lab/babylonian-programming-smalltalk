private - ui
removeLinesWithoutCurrentTrace: traces

	tracesMorph submorphs do: [:line |
		(traces includes: (line valueOfProperty: #bpTrace)) ifFalse: [
			line abandon]]