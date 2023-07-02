what to show
morphForSidePane

	self sidePaneContent = self class probeLogSymbol ifTrue: [^ BPProbeLog new].