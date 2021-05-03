private
addRoot: aBPCallgraphEntry
	
	self assert: aBPCallgraphEntry parent isNil.
	roots addLast: aBPCallgraphEntry