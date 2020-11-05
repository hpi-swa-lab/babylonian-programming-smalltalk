priv toolbuilder (do not overwrite)
bottomLabels
	
	| columns |
	columns := OrderedCollection new.
	
	self bottomEntries withIndexDo: [:each :rowIdx | 
		| label attributes |
		(each isText not and: [each isString not]) 
			ifTrue: [
				label := (self bottomLabelFor: each) asStringOrText asText.
				attributes := self bottomTextAttributesFor: each row: rowIdx.
				attributes ifNotEmpty: [label addAllAttributes: attributes]]
			ifFalse: [label := each].

		columns do: [:column | column addLast: ''].
		(label splitBy: String tab) withIndexDo: [:part :columnIdx | | column |
			column := columns at: columnIdx ifAbsentPut: [OrderedCollection new: rowIdx withAll: ''].
			column at: rowIdx put: part]].
	
	^ columns