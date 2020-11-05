finding ancestors
commonAncestorOf: aCollection ignoringInvocationCounts: aBoolean
	
	| theAncestor possibleAncestors |
	aCollection ifEmpty: [^ nil].
	"aCollection size == 1 ifTrue: [| path |
		path := aCollection first pathWithoutContextMovingRight allButLast.
		^ path ifEmpty: [nil] ifNotEmpty: [path last]]."
	
	possibleAncestors := aCollection first pathWithoutContextMovingRight allButLast.
	
	aCollection allButFirst do: [:each | | path found |
		path := each pathWithoutContextMovingRight.
		found := false.
		path allButLast reverseDo: [:entry | | idx |
			found ifFalse: [
				idx := possibleAncestors findFirst: [:ancestor | entry class == BPCallgraphEntryEnter
					ifFalse: [false]
					ifTrue: [aBoolean 
						ifFalse: [ancestor equalsClassSelectorBlockIdxInvocation: entry]
						ifTrue: [ancestor equalsClassSelectorBlockIdx: entry]]].
				idx ~= 0 ifTrue: [possibleAncestors := possibleAncestors copyFrom: 1 to: idx.
					found := true]]].
		found ifFalse: [^ nil]].
	
	possibleAncestors ifEmpty: [^ nil].
	
	self flag: #todo. "What if the ancestor is not an enter event?"
	theAncestor := possibleAncestors reversed detect: [:each | each class == BPCallgraphEntryEnter].
	^ aBoolean ifTrue: [theAncestor asPathPart] ifFalse: [theAncestor]