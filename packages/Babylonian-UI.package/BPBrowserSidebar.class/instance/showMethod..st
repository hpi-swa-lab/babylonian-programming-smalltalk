as yet unclassified
showMethod: aMethodReference
	
	visualization
		ifNotNil: [visualization highlightMethod: aMethodReference]
		ifNil: [
			exampleListIndex == 0 ifTrue: [| example |
				example := UIManager default chooseFrom: self getExampleListLabels values: self getExampleList title: 'Select example'.
				example ifNil: [^ self].
				self setExampleListIndex: (self getExampleList indexOf: example)].
			visualizationTypeIndex == 0 ifTrue: [| visualizationType |
				visualizationType := UIManager default chooseFrom: self getVisualizationTypeLabels values: self getVisualizationTypes title: 'Select visualization'.
				visualizationType ifNil: [^ self].
				self setVisualizationTypeIndex: (self getVisualizationTypes indexOf: visualizationType)].
			self showMethod: aMethodReference]