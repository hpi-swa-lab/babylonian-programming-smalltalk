*Babylonian-Core
bpExamples
	
	"This is were examples from annotations are born, and this should remain the only place.
	The collection is observed, do not create a new one!
	This collection is also only available from base methods, and not for layered or
	partial methods.
	New examples can be created via: bpNewExampleFrom:.
	Removing examples only works via BPExamples>>#remove:. The collection of CompiledMethods
	will be rebuild on every recompile based on the examples stored in BPExamples."
	| pragmaPrefixes |
	pragmaPrefixes := BPExample bpExamplePragmaPrefixes.
	^ self properties at: #bpExamples ifAbsentPut: [ | newExamples existingExamples |
		newExamples := self pragmas 
				select: [:p | pragmaPrefixes anySatisfy: [:prefix | 
								p keyword beginsWith: prefix]]
				thenCollect: [:pragma |
					(BPExample fromPragma: pragma)
						method: self;
						yourself].
	  	
		"Merge with existing examples"
		existingExamples := BPExamples value examplesForMethod: self.
		(existingExamples , (newExamples collect: [:newExample | 
				existingExamples 
					detect: [:existingExample | existingExample uniqueIdentifier = newExample uniqueIdentifier]
					ifFound: [:uniqueExample |
						uniqueExample method: self.
						uniqueExample]
					ifNone: [
						"This example is new, we should have it in the BPExamples collection"
						BPExamples value add: newExample.
						newExample]])) asSet asOrderedCollection]