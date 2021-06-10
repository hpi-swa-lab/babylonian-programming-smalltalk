accessing
liveSpecimen
	
	^ ((self argumentScripts , {self receiverConstructor}) 
		select: [:aScript | self isLiveSpecimenReference: aScript])
		select: [:specimen | specimen notNil]
		thenCollect: [:aSpecimen | self resolveLiveSpecimen: aSpecimen]