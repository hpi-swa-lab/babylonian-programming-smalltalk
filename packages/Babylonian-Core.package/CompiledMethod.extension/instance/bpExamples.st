*Babylonian-Core
bpExamples
	
	"This is were examples from annotations are born, and this should remain the only place.
	The collection is observed, do not create a new one!
	This collection is also only available from base methods, and not for layered or
	partial methods.
	New examples can be created via: bpNewExampleFrom:"
	| pragmaPrefixes |
	pragmaPrefixes := BPExample bpExamplePragmaPrefixes.
	^ self properties at: #bpExamples ifAbsentPut: [ | newExamples existingIdentifiers |
		newExamples := self pragmas 
				select: [:p | pragmaPrefixes anySatisfy: [:prefix | 
								p keyword beginsWith: prefix]]
				thenCollect: [:pragma |
					(BPExample fromPragma: pragma)
						method: self;
						yourself].
	  	
		"Merge with existing examples"
		existingIdentifiers := BPExamples value exampleIdentifiers.
		newExamples 
			collect: [:newExample | 
				(existingIdentifiers includes: newExample uniqueIdentifier)
					ifTrue: [ | uniqueExample |
						uniqueExample := BPExamples value examples detect: [:e | 
							e uniqueIdentifier = newExample uniqueIdentifier].
						uniqueExample method: self.
						uniqueExample]
					ifFalse: [
						"This example is new, we should have it in the BPExamples collection"
						BPExamples value add: newExample.
						newExample]]
			into: OrderedCollection new]