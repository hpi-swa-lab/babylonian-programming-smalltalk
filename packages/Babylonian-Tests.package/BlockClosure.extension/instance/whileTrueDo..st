*Babylonian-Tests
whileTrueDo: aBlock
	
	"For demo purposes only to prevent the inline compilation of whileFalse"
	| predicate result |
	result := nil.
	[predicate := self value.
	predicate ifFalse: [^ result].
	result := aBlock value] repeat