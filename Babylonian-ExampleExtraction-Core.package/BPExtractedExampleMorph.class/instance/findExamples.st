example finding
findExamples
	
	| results resultNames finalResult |
	
	results := self findPotentialExamples.
	(results isNil or: [results isEmpty]) ifTrue: [
		UIManager default inform: 'No results found for this method'.
		^ self].
	
	resultNames := results collect: [:result | result key, '>>', result value].
	
	finalResult := UIManager default chooseFrom: resultNames values: results.
	
	(finalResult isNil) ifTrue: [^ self].
	
	self example extractedClassName: finalResult key.
	self example extractedMethodSelector: finalResult value.
	
	self updateMorphs