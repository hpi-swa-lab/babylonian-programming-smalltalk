private - ui
relevantTracesOf: traces do: aBlock
	
	^ (traces sorted: [:t | t example exampleName] ascending) 
		do: aBlock