as yet unclassified
getList
	
	| methodSetSize |
	methodSetSize := super getMethods size.
	
	^ self getMethods withIndexCollect: [:each :i | (each isKindOf: BPCallgraphEntry)
		ifTrue: [ | label |
			i > methodSetSize 
				ifTrue: [label := (each label splitBy: String tab) joinSeparatedBy: '     ']
				ifFalse: [label := (each label splitBy: String tab) first].
			each textColor ifNotNil: [:color | label := Text string: label attribute: (TextColor color: color)].
			label]
		ifFalse: [each]]