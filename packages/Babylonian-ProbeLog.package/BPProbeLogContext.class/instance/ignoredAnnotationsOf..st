accessing
ignoredAnnotationsOf: aBPExample

	"test on nil to avoid errors on update of Aspect #newTrace when ProbeLog is closed"
	^ exampleToIgnoredAnnotations 
		ifNotNil: [exampleToIgnoredAnnotations 
					at: (aBPExample uniqueIdentifier) 
					ifAbsent: [{}]]
		ifNil: [{}]