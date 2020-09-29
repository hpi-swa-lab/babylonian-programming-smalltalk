accessing
liveSpecimen
	
	^ (self argumentScripts , {self receiverConstructor}) 
		select: [:s | self isLiveSpecimenReference: s]
		thenCollect: [:s | self resolveLiveSpecimen: s]