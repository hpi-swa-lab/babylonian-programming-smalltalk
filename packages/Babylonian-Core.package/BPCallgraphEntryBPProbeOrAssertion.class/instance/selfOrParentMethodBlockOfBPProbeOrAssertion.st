as yet unclassified
selfOrParentMethodBlockOfBPProbeOrAssertion

	^ (parent notNil and: [parent methodReference = self methodReference]) ifTrue: [parent] ifFalse: [self]