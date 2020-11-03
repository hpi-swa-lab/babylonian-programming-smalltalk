as yet unclassified
getList
	
	^ self getAnnotations collect: [:each | (each isKindOf: BPCallgraphEntry)
		ifTrue: [ | label |
			label := (((each respondsTo: #alternateLabel) ifTrue: [each alternateLabel] ifFalse: [each label]) splitBy: String tab) first.
			each textColor ifNotNil: [:color | label := Text string: label attribute: (TextColor color: color)].
			label]
		ifFalse: [each]]