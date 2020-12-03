accessing
liveSpecimen
	
	^ (self argumentScripts , {self receiverConstructor}) 
		select: [:aScript | self isLiveSpecimenReference: aScript]
		thenCollect: [:aSpecimen | self resolveLiveSpecimen: aSpecimen]