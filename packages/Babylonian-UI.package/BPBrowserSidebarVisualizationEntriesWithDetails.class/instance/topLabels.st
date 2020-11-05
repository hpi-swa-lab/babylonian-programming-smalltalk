priv toolbuilder (do not overwrite)
topLabels
	
	^ self topEntries withIndexCollect: [:each :rowIdx | 
		| label attributes |
		label := (self topLabelFor: each) asStringOrText.
		label isString ifTrue: [
			attributes := self topTextAttributesFor: each row: rowIdx.
			attributes ifNotEmpty: [label := Text string: label attributes: attributes]].
		label]