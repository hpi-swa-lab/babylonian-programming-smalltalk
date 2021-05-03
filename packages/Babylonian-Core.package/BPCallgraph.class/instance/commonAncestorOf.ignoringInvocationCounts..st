finding ancestors
commonAncestorOf: aCollection ignoringInvocationCounts: aBoolean
	
	| theAncestor possibleAncestors |
	aCollection ifEmpty: [^ nil].
	
	possibleAncestors := (aCollection first pathWithResolvedOutOfStackJumps: self) allButLast.
	
	aCollection allButFirst do: [:each | | found path |
		found := false.
		path := (each pathWithResolvedOutOfStackJumps: self) allButLast reversed.
		path withIndexDo: [:entry :i | | ancestorIdx |
			found
				ifFalse: [
					ancestorIdx := possibleAncestors findLast: [:ancestor | entry class == BPCallgraphEntryEnter
						ifFalse: [false]
						ifTrue: [aBoolean 
							ifFalse: [ancestor equalsClassSelectorBlockIdxInvocation: entry]
							ifTrue: [ancestor equalsClassSelectorBlockIdx: entry]]].
					ancestorIdx ~= 0 ifTrue: [
						possibleAncestors := possibleAncestors copyFrom: 1 to: ancestorIdx.
						found := true.
						aBoolean ifTrue: [| remainingPath |
							remainingPath := path allButFirst: i.
							possibleAncestors allButLast do: [:possibleAncestor | 
								(remainingPath findFirst: [:remainingEntry | remainingEntry equalsClassSelectorBlockIdx: possibleAncestor]) == 0 ifTrue: [
									possibleAncestors remove: possibleAncestor]]]]]].
		found ifFalse: [^ nil]].
	
	possibleAncestors ifEmpty: [^ nil].
	
	self flag: #todo. "What if the ancestor is not an enter event?"
	theAncestor := possibleAncestors reversed detect: [:each | each class == BPCallgraphEntryEnter].
	^ aBoolean ifTrue: ["possibleAncestors explore. "theAncestor asPathPart] ifFalse: [theAncestor]