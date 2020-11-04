priv toolbuilder (do not overwrite)
bottomLabels
	
	| columns |
	columns := OrderedCollection new.
	
	self bottomEntries withIndexDo: [:each :rowIdx | 
		| label attributes |
		label := self bottomLabelFor: each.
		label isString ifTrue: [
			attributes := self bottomTextAttributesFor: each.
			attributes ifNotEmpty: [label := Text string: label attributes: attributes]].
		columns do: [:column | column addLast: ''].
		(label asStringOrText splitBy: String tab) withIndexDo: [:part :columnIdx | | column |
			column := columns at: columnIdx ifAbsentPut: [OrderedCollection new: rowIdx withAll: ''].
			column at: rowIdx put: part]].
	
	^ columns