as yet unclassified
getExamplesFor: aMethod for: aSearchTerm

	| classesAndTests |
	classesAndTests := self new findTestsForMethod: aSearchTerm.
	^ classesAndTests collect: [:tuple | self newExampleNamed: tuple key name asString with: {(self exampleValueFromMethodSource: tuple for: #' collect: ')} for: aMethod]