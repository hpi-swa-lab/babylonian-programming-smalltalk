private
for: trace selectContextAt: index
	
	index = 0 
		ifTrue: [self selectedContextPerExample 
					removeKey: trace example 
					ifAbsent: ["dont care"]]
		ifFalse: [self selectedContextPerExample 
					at: trace example 
					put: ((trace runsForBlockId: self id) at: index) stack first].
	self changed: #filterContext
	