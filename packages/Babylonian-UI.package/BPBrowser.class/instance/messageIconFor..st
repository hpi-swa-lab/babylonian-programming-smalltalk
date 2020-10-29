callgraphs
messageIconFor: aSelector
	| baseIcon callgraphIcon combinedIcon |
	baseIcon := super messageIconFor: aSelector.
	
	callgraphIcon := self selectedClassOrMetaClass ifNotNil: [:class | | meth |
		meth := [class >> aSelector] on: KeyNotFound do: [^ baseIcon].
		true caseOf: {
			[BPByteCodeRewriter hasActiveTracing: meth] -> ["footsteps" BPEmojis i1F43EIcon].
			[BPByteCodeRewriter hasInactiveTracing: meth] -> ["grasshopper" BPEmojis i1F997Icon "ghost" "BPEmojis i1F47BIcon"].
			[(BPByteCodeRewriter hasTracing: meth) not] -> ["sheep" BPEmojis i1F411Icon].
		}].
	callgraphIcon := callgraphIcon scaledToSize: 12.
	
	baseIcon ifNil: [^ callgraphIcon].
	
	combinedIcon := Form extent: 24@12 depth: 32.
	combinedIcon copy: (0@0 extent: 12@12) from: baseIcon to: 0@0 rule: Form over.
	combinedIcon copy: (0@0 extent: 12@12) from: callgraphIcon to: 12@0 rule: Form over.
	
	^ combinedIcon