accessing
allParents
	"Returns all parent nodes, starting with the closest one and ending with the root"
	
	^ self parent 
		ifNil: [#()]
		ifNotNil: [{self parent}, self parent allParents]