private
resolveLiveSpecimen: anObject
	
	
	^ (self isLiveSpecimenReference: anObject)
		ifTrue: [BPActiveSpecimenRegistry value at: anObject second]
		ifFalse: [anObject]
	