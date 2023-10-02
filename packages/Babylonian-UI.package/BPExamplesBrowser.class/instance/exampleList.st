accessing
exampleList
	
	^ self actualExampleList collect: [:e | |text|
		text := (self exampleLabelFor: e) asText.
		e isActive ifTrue: [text allBold].
		text]