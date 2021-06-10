accessing
probes
	
	^ self currentTrace
		ifNil: [{}]
		ifNotNil: [self currentTrace probes]