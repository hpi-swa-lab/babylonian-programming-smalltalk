private
performTrackingActionRegarding: aBlock
	
	|outdatedKeysCount|
	outdatedKeysCount := methodToCount size.
	aBlock value.
	(outdatedKeysCount ~~ methodToCount size) ifTrue: [self changed: #updatedContext].