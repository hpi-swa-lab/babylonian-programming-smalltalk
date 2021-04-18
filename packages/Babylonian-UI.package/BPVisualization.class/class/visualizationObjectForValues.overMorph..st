helper
visualizationObjectForValues: traceValues overMorph: traceValuesMorph
	
	
	| responsibleSubclasses |
	responsibleSubclasses := self visualizationClassesForValues: traceValues.
	(responsibleSubclasses isEmpty)
		ifTrue: [^ (self newWithValues: traceValues forMorph: traceValuesMorph) visualizationMorph].
		
	^ (responsibleSubclasses first newWithValues: traceValues forMorph: traceValuesMorph)