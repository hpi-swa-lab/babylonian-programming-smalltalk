callgraphs
colorForTraceValue: aBPTraceValue inTrace: aBPTrace
	
	^ (colorCache at: aBPTrace ifAbsentPut: [| callgraph values path paths uniquePaths colors |
		callgraph := aBPTrace example currentCallgraph.
		callgraph ifNil: ["No call graph yet" ^ Color transparent].
		values := aBPTrace valuesForProbeId: self id.
		paths := values collect: [:value | | entry |
			entry := callgraph detect: [:each | 
				(each isKindOf: BPCallgraphEntryBPProbeOrAssertion) and: [each traceValue == value]].
			path := (entry pathWithResolvedOutOfStackJumps: callgraph) allButLast collect: #asPathPart.
			value -> path].
		uniquePaths := Dictionary newFrom: ((paths collect: #value) withoutDuplicates collect: [:aPath |
			aPath -> (aPath ifEmpty: 0 ifNotEmpty: [((aPath collect: [:entry | entry hash]) sum * 3 / 13) floor])]).
		"self haltOnce."
		colors := "("Color orderedCrayonColorNames " // 2), (Color wheel: uniquePaths size // 2 saturation: 0.3 brightness: 0.8)".
		Dictionary newFrom: (paths collect: [:each | each key -> (BPExample exampleColors atWrap: (uniquePaths at: each value))])
		]) at: aBPTraceValue