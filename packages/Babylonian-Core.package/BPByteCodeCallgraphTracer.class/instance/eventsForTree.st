post processing
eventsForTree
	
	| callgraph depth depthAfterExit depthMap printContinuesHere eventStream treeCache addToTree prevDepth overwriteDepth executionContinuation |
	
	depth := 0.
	depthAfterExit := nil.

	depthMap := Dictionary new.
	
	callgraph := BPCallgraph new.
	treeCache := Dictionary new.
	prevDepth := -1.
	overwriteDepth := -1.
	addToTree := [:entry | | theDepth |
		theDepth := overwriteDepth >= 0 ifTrue: [overwriteDepth] ifFalse: [depth].
		theDepth > (prevDepth + 1) ifTrue: [
			"context jumped to the right by more than 1 step, therefore we need to add 
			new tree nodes (->) to correctly mount the following nodes"
			self assert: theDepth - executionContinuation second size >= 0.
			
			executionContinuation second withIndexDo: [:helper :i |
				overwriteDepth := theDepth - 1 - (executionContinuation second size - i).
				addToTree value: helper].
			"(theDepth - 1 - executionContinuation second size) to: theDepth - 1 do: [:i | 
				overwriteDepth := i.
				addToTree value: BPCallgraphEntryContextJumpHelper new]."
			overwriteDepth := -1].
		
		theDepth == 0
			ifTrue: [callgraph addRoot: entry]
			ifFalse: [(treeCache at: theDepth - 1) addChild: entry].
		treeCache at: theDepth put: entry.
		prevDepth := theDepth].

	printContinuesHere := [| entry |
		addToTree value: executionContinuation first.
		executionContinuation := nil].
	
	eventStream := self eventStream.
	[eventStream atEnd] whileFalse: [| entry | eventStream next caseOf: {
		[#enter] -> [ | parts class selector blockIdx invocationCount |			
			parts := eventStream next splitBy: ' >> '.
			class := parts first.
			selector := parts second.
			blockIdx := parts third asInteger.
			"invocation count of the surrounding method. In other words: 'Id' of the context of this block/method, unique per method"
			invocationCount := eventStream next.
			
			entry := BPCallgraphEntryEnter new.
			entry class: class selector: selector blockIdx: blockIdx invocationCount: invocationCount.
			addToTree value: entry.
			
			blockIdx == 1 ifTrue: [depthMap at: {class . selector . invocationCount} put: depth].
			depth := depth + 1].
		[#exit] -> [ | parts class selector blockIdx invocationCount blockReturns |
			parts := eventStream next splitBy: ' >> '.
			class := parts first.
			selector := parts second.
			blockIdx := parts third asInteger.
			"invocation count of the surrounding method. In other words: 'Id' of the context of this block/method, unique per method"
			invocationCount := eventStream next.
			blockReturns := eventStream next.
			
			depth := depth - 1.
			self assert: depth >= 0.
		
			entry := BPCallgraphEntryExit new.
			entry class: class selector: selector blockIdx: blockIdx invocationCount: invocationCount returns: blockReturns.
			addToTree value: entry.

			blockReturns ifTrue: [| oldDepth |
				oldDepth := depthMap removeKey: {class . selector . invocationCount}.
				blockIdx > 1 ifTrue: [depth := oldDepth]].
			
			depthAfterExit ifNotNil: [
				depth := depthAfterExit.
				depthAfterExit := nil.
				printContinuesHere value]].
		[#contextSenderChanged] -> [ | depthDelta inChainOrNumMoveRight inChain hasActiveTracing executionContinuationEntry |
			depthDelta := eventStream next.
			inChainOrNumMoveRight := eventStream next.
			inChain := inChainOrNumMoveRight == true.
			hasActiveTracing := eventStream next.
			
			"ignore events when depth didn't change and method that causes the change does not have active tracing."
			(depthDelta ~= 0 or: hasActiveTracing) ifTrue: [
				hasActiveTracing 
					ifTrue: [
						depthAfterExit := depth + depthDelta.
						"depth := depth + 1"]
					ifFalse: [depth := depth + depthDelta].
				self assert: depth >= 0.
				
				executionContinuationEntry := BPCallgraphEntryContextExecutionContinuation new.
				executionContinuation := {executionContinuationEntry . inChainOrNumMoveRight}.
				entry := BPCallgraphEntryContextSenderChanged new.
				entry 
					depthDelta: depthDelta 
					inChain: inChain 
					hasActiveTracing: hasActiveTracing 
					executionContinuationEntry: executionContinuationEntry.
				addToTree value: entry.
				
				hasActiveTracing ifFalse: [printContinuesHere value]]].
		[#custom] -> [| type data |
			type := eventStream next.
			data := eventStream next.
			
			entry := (type caseOf: {
				[#bpProbeHit] -> [BPCallgraphEntryBPProbe].
				[#bpAssertionHit] -> [BPCallgraphEntryBPAssertion].
				[#bpExample] -> [BPCallgraphEntryBPExample]}otherwise: [BPCallgraphEntryCustomEvent]) new.
			entry type: type data: data.
			addToTree value: entry]
	}].

	^ callgraph