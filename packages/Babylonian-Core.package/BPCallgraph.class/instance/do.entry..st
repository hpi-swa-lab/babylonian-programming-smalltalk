private
do: aBlock entry: aBPCallgraphEntry

	aBlock value: aBPCallgraphEntry.
	aBPCallgraphEntry children do: [:child | self do: aBlock entry: child]