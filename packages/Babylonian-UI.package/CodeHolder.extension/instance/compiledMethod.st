*Babylonian-UI-private
compiledMethod

	"Only callable on object responding to methodReference, currently BPBrowser and MessageSet"
	^ (self respondsTo: #methodReference)
		ifTrue: [self methodReference ifNotNil: #compiledMethod]