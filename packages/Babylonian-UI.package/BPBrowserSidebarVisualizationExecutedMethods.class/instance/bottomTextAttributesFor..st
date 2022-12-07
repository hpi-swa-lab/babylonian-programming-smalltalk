list bottom
bottomTextAttributesFor: entry
	
	^ {}"entry textColor ifNotNil: [:color | {TextColor color: color}] ifNil: [{}]"