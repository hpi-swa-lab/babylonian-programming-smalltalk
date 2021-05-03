*Babylonian-UI-private
compiledMethod
	"Only callable on object responding to methodReference, currently BPBrowser and MessageSet"
	^ self methodReference ifNotNil: [:r | r compiledMethod]