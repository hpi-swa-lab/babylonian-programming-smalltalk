as yet unclassified
getList
	
	^ self getMethods collect: [:each | (each isKindOf: BPCallgraphEntry)
		ifTrue: [ | label |
			label := (each label splitBy: String tab) first.
			each textColor ifNotNil: [:color | label := Text string: label attribute: (TextColor color: color)].
			label]
		ifFalse: [each]]