process control
tracingProcessAndDescendantsActiveAtBack
	
	^ self tracingProcessAndDescendants 
		sorted: [:p | p isActiveProcess ifTrue: [2] ifFalse: [1]] ascending