accessing
exampleList
	
	^ self actualExampleList collect: [:e | |text|
		text := (e method methodClass className asString , 
			' - ' , 
			e method selector asString , 
			' - ' , 
			e exampleName asString) asText.
		e isActive ifTrue: [text allBold].
		text]