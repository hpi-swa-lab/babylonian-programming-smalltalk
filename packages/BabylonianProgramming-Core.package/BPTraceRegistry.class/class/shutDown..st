system startup
shutDown: quitting

	self cleanUpTracesOnShutdown ifTrue: [
		quitting ifTrue: [BPTraces value removeAll]].