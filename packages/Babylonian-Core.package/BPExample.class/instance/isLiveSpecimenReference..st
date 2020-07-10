private
isLiveSpecimenReference: anObject

	^ anObject isArray and: [anObject first = #object and: [anObject size = 2]]