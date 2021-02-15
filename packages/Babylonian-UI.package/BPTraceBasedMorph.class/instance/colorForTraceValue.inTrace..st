callgraphs
colorForTraceValue: aBPTraceValue inTrace: aBPTrace
	
	^ (colorCache at: aBPTrace ifAbsentPut: [| callgraph values path paths uniquePaths colors |
		callgraph := aBPTrace example currentCallgraph.
		values := aBPTrace valuesForProbeId: self id.
		paths := values collect: [:value | | entry |
			entry := callgraph detect: [:each | 
				(each isKindOf: BPCallgraphEntryBPProbeOrAssertion) and: [each traceValue == value]].
			path := (entry pathWithResolvedOutOfStackJumps: callgraph) allButLast collect: #asPathPart.
			value -> path].
		uniquePaths := (paths collect: #value) withoutDuplicates.
		colors := "("Color wheel: uniquePaths size" // 2), (Color wheel: uniquePaths size // 2 saturation: 0.3 brightness: 0.8)".
		Dictionary newFrom: (paths collect: [:each | each key -> (colors at: (uniquePaths indexOf: each value))])
		]) at: aBPTraceValue