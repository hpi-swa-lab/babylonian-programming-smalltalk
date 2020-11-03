as yet unclassified
depthDelta: theDepthDelta inChain: isInChain hasActiveTracing: tracing executionContinuationEntry: entry debug: debug
	
	depthDelta := theDepthDelta.
	inChain := isInChain.
	hasActiveTracing := tracing.
	entry contextSenderChangedEntry: self.
	executionContinuationEntry := entry.
	tmpdebug := debug