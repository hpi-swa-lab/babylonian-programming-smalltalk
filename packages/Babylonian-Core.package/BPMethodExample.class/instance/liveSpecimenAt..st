accessing
liveSpecimenAt: anIndex
	(self isLiveSpecimenReference: (self argumentScripts at: anIndex)) ifFalse: [^ nil].
	^ self resolveLiveSpecimen: (self argumentScripts at: anIndex)