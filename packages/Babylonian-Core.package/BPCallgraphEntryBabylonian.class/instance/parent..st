as yet unclassified
parent: aBPCallgraphEntry

	"sanity check: All probes and assertions should be direct children of method entries or nil"
	self assert: (aBPCallgraphEntry isNil or: [aBPCallgraphEntry class == BPCallgraphEntryEnter]).
	super parent: aBPCallgraphEntry