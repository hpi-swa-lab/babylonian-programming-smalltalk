private
isLiveSpecimenReference: anObject
	
	^ anObject isArray and: [(anObject first = #object or: [anObject first = #copy]) and: [anObject size = 2]]