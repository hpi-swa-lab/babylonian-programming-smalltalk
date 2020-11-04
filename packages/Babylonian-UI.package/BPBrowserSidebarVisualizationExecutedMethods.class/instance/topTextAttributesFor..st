list top
topTextAttributesFor: entry

	^ entry textColor ifNil: [{}] ifNotNil: [:color | {TextColor color: color}]