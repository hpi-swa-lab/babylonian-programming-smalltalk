private - ui
relevantTracesOf: traces do: aBlock
	
	| exampleSpecificTraces |
	exampleSpecificTraces := self annotation hasExampleSelection
		ifTrue: [traces select: [:trace | trace example = self annotation exampleSelection]]
		ifFalse: [traces].
	^ (exampleSpecificTraces sorted: [:t | t example exampleName] ascending) do: aBlock