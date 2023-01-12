private
resolveLiveSpecimen: anObject
	
	^ anObject isLiveSpecimenReference
		ifTrue: [anObject specimen]
		ifFalse: [anObject]
	