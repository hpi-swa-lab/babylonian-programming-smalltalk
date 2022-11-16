comparing
= anotherBPContext

	self class = anotherBPContext class ifFalse: [^ false].
	^ self contextIdentityHash = anotherBPContext contextIdentityHash