bottom content
selectMatchingEntriesFromCallgraph: topEntry

	^ self callgraph select: [:each | (each isKindOf: BPCallgraphEntryBPProbeOrAssertion) and: [each id == topEntry id]].