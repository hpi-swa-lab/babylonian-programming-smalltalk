running
setUp
	
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	
	{method.
	(BPTestExamplesClass>>#methodWithLiveSpecimen:).
	(BPTestExamplesClass>>#methodWithScriptExamples)} do: [:aMethod | 
		aMethod removeProperty: #bpExamples ifAbsent: []].

	"Force an update"
	method bpExamples.
	recordedEvents := OrderedCollection new.