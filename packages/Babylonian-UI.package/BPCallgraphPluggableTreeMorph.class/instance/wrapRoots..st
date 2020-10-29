updating
wrapRoots: someObjects
	
	super wrapRoots: someObjects.
	self roots do: [:each | self expandRecursivelyIfNeeded: each].
	self adjustSubmorphPositions