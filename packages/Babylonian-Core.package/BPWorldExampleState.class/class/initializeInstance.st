singleton
initializeInstance

	SoleInstance ifNotNil: [BPExamples default remove: SoleInstance].
	SoleInstance := (self basicNew) initialize; yourself.