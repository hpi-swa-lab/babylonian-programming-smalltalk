accessing
annotation: anExamplesAnnotation
	
	super annotation: anExamplesAnnotation.
	self updateExampleMorphsFrom: anExamplesAnnotation examples.
	self exampleMorphs do: [:m | 
		self flag: #todo. "The following is not nice. See #rememberThat:hasACollapsedStateOf:"
		ExampleCollapsedState 
			ifNil: [m collapse]
			ifNotNil: [(ExampleCollapsedState at: m example uniqueIdentifier 
				ifAbsent: [true]) ifTrue: [m collapse]]].