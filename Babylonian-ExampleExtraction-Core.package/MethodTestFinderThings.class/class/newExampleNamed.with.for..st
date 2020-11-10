as yet unclassified
newExampleNamed: aString with: arguments for: aMethod

	| example |
	example := BPExample newFor: aMethod.
	example exampleName: aString.
	arguments doWithIndex: [:each :index |
		example argumentScripts at: index put: each].
	^ example
	