priv toolbuilder (do not overwrite)
topLabels
	
	^ self topEntries collect: [:each | 
		| label attributes |
		label := (self topLabelFor: each) asStringOrText.
		label isString ifTrue: [
			attributes := self topTextAttributesFor: each.
			attributes ifNotEmpty: [label := Text string: label attributes: attributes]].
		label]