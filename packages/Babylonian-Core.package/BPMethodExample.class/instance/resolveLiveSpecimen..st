private
resolveLiveSpecimen: anObject
	
	^ (self isLiveSpecimenReference: anObject)
		ifTrue: [ | specimen |
			specimen := BPActiveSpecimenRegistry value at: anObject second.
			anObject first = #copy
				ifTrue: [specimen copy]
				ifFalse: [specimen]]
		ifFalse: [anObject]
	