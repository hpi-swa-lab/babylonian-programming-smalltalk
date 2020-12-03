accessing
removeAll: bpExamples
	
	mutex critical: [bpExamples do: [:anExample | self remove: anExample]]