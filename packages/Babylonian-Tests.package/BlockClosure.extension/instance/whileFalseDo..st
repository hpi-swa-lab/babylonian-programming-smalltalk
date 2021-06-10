*Babylonian-Tests
whileFalseDo: aBlock
	
	"For demo purposes only to prevent the inline compilation of whileFalse"
	| predicate result |
	result := nil.
	[predicate := self value.
	predicate ifTrue: [^ result].
	result := aBlock value] repeat