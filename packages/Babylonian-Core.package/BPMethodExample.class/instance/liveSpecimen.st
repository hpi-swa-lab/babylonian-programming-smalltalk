accessing
liveSpecimen
	
	^ ((self argumentScripts , {self receiverConstructor}) 
		select: [:aScript | aScript isLiveSpecimenReference])
		select: [:specimen | specimen notNil]
		thenCollect: [:aSpecimen | self resolveLiveSpecimen: aSpecimen]