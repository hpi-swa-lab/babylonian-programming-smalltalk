accessing
removeAll: bpExamples
	
	mutex critical: [bpExamples do: [:e | self remove: e]]