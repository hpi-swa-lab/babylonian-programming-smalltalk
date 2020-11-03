as yet unclassified
depthDelta: theDepthDelta inChain: isInChain hasActiveTracing: tracing executionContinuationEntry: entry
	
	depthDelta := theDepthDelta.
	inChain := isInChain.
	hasActiveTracing := tracing.
	entry contextSenderChangedEntry: self.
	executionContinuationEntry := entry