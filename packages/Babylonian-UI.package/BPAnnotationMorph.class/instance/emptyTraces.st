private
emptyTraces

	^ BPTraces value keys 
		select: [:exampleReference | | example |
			example := exampleReference actualExample.
			example isActive]
		thenCollect: [:e | BPTrace new example: e actualExample; yourself]