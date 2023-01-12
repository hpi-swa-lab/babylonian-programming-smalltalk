accessing
directDescendantsOf: aProcess

	^ (self processes at: aProcess ifAbsent: [#()]) asArray