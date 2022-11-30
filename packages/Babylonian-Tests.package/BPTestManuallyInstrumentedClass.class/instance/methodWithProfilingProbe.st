example methods
methodWithProfilingProbe

	3 timesRepeat: [
		(self bpProfile: [Date today asString] forProbe: 123 inContext: thisContext)].