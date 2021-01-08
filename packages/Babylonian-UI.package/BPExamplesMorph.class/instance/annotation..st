accessing
annotation: anExamplesAnnotation
	
	super annotation: anExamplesAnnotation.
	self updateExampleMorphsFrom: anExamplesAnnotation examples.
	self exampleMorphs do: [:m | 
		m collapse].