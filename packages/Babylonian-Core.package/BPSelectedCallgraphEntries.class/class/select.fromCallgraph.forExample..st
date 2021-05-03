as yet unclassified
select: aBPCallgraphEntry fromCallgraph: aBPCallgraph forExample: aBPExample
	
	| entries entriesByCallgraph |
	self assert: (aBPCallgraphEntry isKindOf: BPCallgraphEntry).
	entriesByCallgraph := self selectedEntries at: aBPExample ifAbsentPut: [Dictionary new].
	entries := entriesByCallgraph at: aBPCallgraph ifAbsentPut: [Set new].
	entries add: aBPCallgraphEntry.
	self triggerEvent: #entrySelected