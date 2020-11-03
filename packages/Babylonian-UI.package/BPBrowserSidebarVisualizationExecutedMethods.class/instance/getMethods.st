as yet unclassified
getMethods
	
	| tmp |
	methods ifNotNil: [^ methods].
	
	tmp := OrderedDictionary new.
	(self callgraph do: [:each | (each class == BPCallgraphEntryEnter) ifTrue: [tmp at: {each getClass . each getSelector . each getBlockIdx} ifAbsentPut: [each]]]).
	
	methods := OrderedCollection new.
	methods addAll: tmp values.	
	^ methods