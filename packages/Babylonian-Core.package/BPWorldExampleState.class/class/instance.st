singleton
instance

	SoleInstance ifNil: [self initializeInstance].
	^ SoleInstance