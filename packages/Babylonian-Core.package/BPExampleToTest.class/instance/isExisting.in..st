helper
isExisting: aMethodName in: aClass

	^ (self methodEntryFor: aMethodName in: aClass) notNil
	