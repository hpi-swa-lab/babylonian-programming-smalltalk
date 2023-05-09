running
setUp
	
	probelog := BPProbeLog new.
	self usedMethods do: [:aMethod | 
			aMethod removeProperty: #bpExamples ifAbsent: []].
	