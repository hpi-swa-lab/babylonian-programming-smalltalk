as yet unclassified
getAnnotations
	
	| list |
	list := super getAnnotations copy.

	annotationIndex > 0 ifTrue: [| selectedEntry entries |
		list addLast: '################################################################################'.
		selectedEntry := super getAnnotations at: annotationIndex.
		entries := self callgraph select: [:each | (each isKindOf: BPCallgraphEntryBPProbeOrAssertion) 
			and: [each id == selectedEntry id]].
		entries withIndexDo: [:entry :i | | attributes |
			attributes := OrderedCollection with: TextEmphasis bold.
			entry traceValue == selectedEntry traceValue 
				ifTrue: [attributes addLast: (TextColor color: Color red)].
			list addLast: (Text string: 'Hit ', i attributes: attributes).
			list addAll: entry pathWithoutContextMovingRight]].
	
	^ list