accessing
annotation: anExamplesAnnotation

	super annotation: anExamplesAnnotation.
	self updateExamples.
	self exampleMorphs do: [:m | 
		self flag: #todo. "The following is not nice. See #rememberThat:hasACollapsedStateOf:"
		ExampleCollapsedState ifNotNil: [ | rememberedCollapsedState |
				rememberedCollapsedState := ExampleCollapsedState 
					at: m example uniqueIdentifier 
					ifAbsentPut: [true].
				rememberedCollapsedState ifTrue: [m collapse]]].