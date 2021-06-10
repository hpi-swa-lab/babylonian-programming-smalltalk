accessing
annotation: anExamplesAnnotation
	
	super annotation: anExamplesAnnotation.
	self updateExamples.
	self exampleMorphs do: [:m | 
		self flag: #todo. "The following is not nice. See #rememberThat:hasACollapsedStateOf:"
		ExampleCollapsedState 
			ifNil: [m collapse]
			ifNotNil: [(ExampleCollapsedState at: m example uniqueIdentifier 
				ifAbsentPut: [false]) ifTrue: [m collapse]]].