accessing
traceValuesMorphs

	^ self traceValues collect: [:traceValue | traceValue asValueMorph]