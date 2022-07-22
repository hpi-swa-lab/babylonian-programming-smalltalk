accessing
traceValues

	^ self currentTrace
		ifNil: [#()]
		ifNotNil: [self currentTrace traceValues]