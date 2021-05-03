as yet unclassified
rootEntries
	
	| roots |
	roots := callgraph ifNotNil: #roots ifNil: [{}].
	self class showReturnNodes ifFalse: [roots := self withoutReturnNodes: roots].
	^ roots