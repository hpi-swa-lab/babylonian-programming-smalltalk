private - ui
ensureNoErrorIndicator

	self getErrorIndicator ifNotNil: [:indicator | self removeMorph: indicator].

	