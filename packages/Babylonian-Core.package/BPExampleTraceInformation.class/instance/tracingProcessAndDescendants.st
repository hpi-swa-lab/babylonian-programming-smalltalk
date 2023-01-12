process control
tracingProcessAndDescendants

	^ self tracingProcess 
		ifNil: [#()]
		ifNotNil: [:aTracingProcess | 
			{aTracingProcess} , (BPProcessGenealogy allDescendantsOf: aTracingProcess)]