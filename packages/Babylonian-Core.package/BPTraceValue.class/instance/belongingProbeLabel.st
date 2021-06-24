accessing
belongingProbeLabel
	
	|annotations probe|
	annotations := self containedMethodReference compiledMethod bpAnnotations.
	probe := (annotations select: [:anObject | anObject isProbe]) 
		ifNotEmpty: [:aCollection | aCollection detect: [:aProbe | aProbe id == self belongingProbeId]].
	probe isCollection ifTrue: [self halt: 'Warning: received an empty collection, try adding a probe somewhere to fix it'].
	^ probe label