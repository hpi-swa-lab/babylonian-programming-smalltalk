private
resolveLiveSpecimen: anObject

	^ (anObject isArray and: [anObject first = #object and: [anObject size = 2]]) 
		ifTrue: [BPActiveSpecimenRegistry value at: anObject second]
		ifFalse: [anObject]
	