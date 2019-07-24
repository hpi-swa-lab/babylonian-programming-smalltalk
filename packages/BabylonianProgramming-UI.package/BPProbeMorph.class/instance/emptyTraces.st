private
emptyTraces

	^ (BPTraces value keys collect: [:exampleReference | | example |
		example := exampleReference actualExample.
		example isActive
			ifTrue: [BPTrace new example: example; yourself]
			ifFalse: [nil]]) reject: [:v | v isNil]