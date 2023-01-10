accessing
receiverConstructorLiveSpecimen
	self receiverConstructor isLiveSpecimenReference ifFalse: [^ nil].
	^ self resolveLiveSpecimen: self receiverConstructor
	