running
tearDown

	self usedMethods do: [:aMethod | 
			aMethod removeProperty: #bpExamples ifAbsent: []].