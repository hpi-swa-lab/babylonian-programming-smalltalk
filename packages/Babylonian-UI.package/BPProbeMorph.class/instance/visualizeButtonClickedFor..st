actions
visualizeButtonClickedFor: aTrace
	
	| lineMorph scrollPane visualizationMorph axisYNotationMorph|
	lineMorph := self ensureLineMorphFor: aTrace.
	scrollPane := (lineMorph submorphNamed: #scrollWrapper) submorphNamed: #scrollPane.
	axisYNotationMorph  := lineMorph submorphNamed: #axisYNotation.
	visualizationMorph := scrollPane scroller submorphNamed: #visualization.
	
	(visualizationMorph visible) 
		ifTrue: [visualizationMorph hide. axisYNotationMorph hide] 
		ifFalse: [visualizationMorph show. axisYNotationMorph show].