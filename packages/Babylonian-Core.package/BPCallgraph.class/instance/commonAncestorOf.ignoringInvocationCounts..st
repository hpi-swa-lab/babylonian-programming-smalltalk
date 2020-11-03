accessing
commonAncestorOf: aCollection ignoringInvocationCounts: aBoolean
	
	| possibleAncestors |
	
	aBoolean ifTrue: [self error: 'not yet implemented'].
	
	possibleAncestors := aCollection first pathWithoutContextMovingRight.
	
	aCollection allButFirst do: [:each | | path found |
		path := each pathWithoutContextMovingRight.
		found := false.
		path reverseDo: [:entry | | idx |
			found ifFalse: [
				idx := possibleAncestors indexOf: entry.
				idx ~= 0 ifTrue: [possibleAncestors := possibleAncestors copyFrom: 1 to: idx.
					found := true]]].
		found ifFalse: [^ nil]].
	
	^possibleAncestors last.