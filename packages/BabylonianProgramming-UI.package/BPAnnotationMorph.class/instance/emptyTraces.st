private
emptyTraces

	^ (BPTraces value keys select: [:exampleReference | | example |
		example := exampleReference actualExample.
		example isActive]) collect: [:e | BPTrace new example: e actualExample; yourself]