minimizing
instVarNumberForGetter: aMethod

	^ aMethod methodClass
		instVarIndexFor: aMethod referredInstVars asOrderedCollection last
		ifAbsent: [-1]