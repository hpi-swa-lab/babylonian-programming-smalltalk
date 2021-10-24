tests
testStylerAddsExamplesMorphForSomeFilledMethodBody
	
	self testStylerAddsExamplesMorphFor: 'method
	| a b |
	a := 1.
	b := 2.
	' asText.
	