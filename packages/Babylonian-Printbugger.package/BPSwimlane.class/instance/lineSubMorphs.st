accessing
lineSubMorphs

	^ self submorphs size > 1
		ifTrue: [self submorphs second submorphs]
		ifFalse: [{}] 