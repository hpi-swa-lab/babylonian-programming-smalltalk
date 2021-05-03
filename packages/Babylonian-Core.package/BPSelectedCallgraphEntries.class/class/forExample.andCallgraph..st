as yet unclassified
forExample: aBPExample andCallgraph: aBPCallgraph
	
	| entriesByCallgraph |
	entriesByCallgraph := self selectedEntries at: aBPExample ifAbsent: [^ Set new].
	entriesByCallgraph at: aBPCallgraph ifPresent: [:entries | ^ entries].
	^ Set new