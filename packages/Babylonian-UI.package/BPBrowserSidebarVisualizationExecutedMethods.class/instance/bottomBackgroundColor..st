list bottom
bottomBackgroundColor: aNumber
	
	"(super bottomBackgroundColor: aNumber) ifNotNil: [:color | ^ color]."
	
	^ self selectedTopEntry ifNil: [nil] ifNotNil: [:topEntry |
		aNumber <= (cache at: topEntry) second ifTrue: [Color veryVeryLightGray lighter] ifFalse: [nil]]