as yet unclassified
doesNotUnderstand: aMessage
	
	| result |
	result := aMessage sendTo: self subject.
	"calls at: aMessage selector put: result."
	calls at: aMessage put: result.