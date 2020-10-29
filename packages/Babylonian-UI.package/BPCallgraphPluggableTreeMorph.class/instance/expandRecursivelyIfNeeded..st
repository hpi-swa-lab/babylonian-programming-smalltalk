as yet unclassified
expandRecursivelyIfNeeded: aBPCallgraphIndentingListItemMorph

	aBPCallgraphIndentingListItemMorph complexContents item expandByDefault ifFalse: [^ self].
	aBPCallgraphIndentingListItemMorph expand.
	aBPCallgraphIndentingListItemMorph childrenDo: [:child | self expandRecursivelyIfNeeded: child].