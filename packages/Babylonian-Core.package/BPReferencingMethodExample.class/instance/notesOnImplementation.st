as yet unclassified
notesOnImplementation

	"
	Things to consider:
	- finally the point has come where we probably want an actual unique identifier for examples... probably use an alphanumeric string of some sort, as it is not as performance critical as with instrumentation annotations
	- what if the referenced example does not exist anymore? The BPReferencingMethodExampleMorph should probably display that the referenced example can not be found anymore
	- the super example probably is a subclass of the referencing method example, as the referencing one might as well reference an example from a class that is not in the same inheritance chain
	- with regard to super examples, we might also want to consider sibling classes
	"