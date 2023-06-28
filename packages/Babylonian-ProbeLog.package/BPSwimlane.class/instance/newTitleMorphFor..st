private - ui
newTitleMorphFor: aBPExample

	| exampleMorph |
	exampleMorph :=  example morphClass new
			annotation: ( (example method bpAnnotations 
							select: [:anAnnotation | anAnnotation isExample])
							detect: [:anExample | anExample exampleName = example exampleName]
							"ifNone may happen if the user activates a newly
							created example without saving the method first." 
							ifNone: [^ self newBackUpTitleMorphFor: aBPExample]);
			name: #title;
			example: example;
			yourself.
	exampleMorph on: #click send: #openInBrowser to: exampleMorph.
	"For swimlane embedding, one may execute additional code as soon as the example is deleted through exampleMorph.
	So, make sure to pass the event through. The using classes don't have to catch the delete event directly from
	the button itself, but can just listen to this swimlane."
	exampleMorph
		when: #annotationMorphCloses
		send: #titleMorphCloses 
		to: self.
		
	^ exampleMorph
	