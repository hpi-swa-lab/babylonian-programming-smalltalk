running
tearDown
	
	BPExamples value removeAll: BPExamples value examples.
	self usedMethods do: [:aMethod | 
			aMethod removeProperty: #bpExamples ifAbsent: []].