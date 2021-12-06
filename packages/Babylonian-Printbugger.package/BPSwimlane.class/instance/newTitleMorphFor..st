private - ui
newTitleMorphFor: aBPExample

	^ BPDistantMethodExampleMorph new
			annotation: ( (example method bpAnnotations 
							select: [:anAnnotation | anAnnotation isExample])
							detect: [:anExample | anExample exampleName = example exampleName]
							"ifNone may happen if the user activates a newly
							created example without saving the method first." 
							ifNone: [^ self newBackUpTitleMorphFor: aBPExample]);
			example: example;
			on: #click 
				send: #value 
				to: [ToolSet 
						browse: aBPExample method methodClass 
						selector: aBPExample method selector asSymbol];
			yourself
	