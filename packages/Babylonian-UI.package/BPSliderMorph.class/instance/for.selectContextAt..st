private
for: anExample selectContextAt: index
	

	index = 0 
		ifTrue: [self selectedContextPerExample 
					removeKey: anExample 
					ifAbsent: ["dont care"]]
		ifFalse: [self selectedContextPerExample 
					at: anExample 
					put: (((displayedTraces detect: [:t | t example = anExample]) runsForBlockId: self id) at: index)].
	self changed: #filterContext.
	