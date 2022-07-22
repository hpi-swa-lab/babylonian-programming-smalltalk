accessing
receiverConstructorLiveSpecimen
	(self isLiveSpecimenReference: self receiverConstructor) ifFalse: [^ nil].
	^ self resolveLiveSpecimen: self receiverConstructor
	