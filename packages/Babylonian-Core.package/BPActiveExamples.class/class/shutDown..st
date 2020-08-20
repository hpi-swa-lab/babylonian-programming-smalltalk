as yet unclassified
shutDown: quitting

	self cleanUpTracesOnShutdown ifTrue: [
		quitting ifTrue: [self value removeTraces]].